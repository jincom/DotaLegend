--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

local UIEL = LuaFramework.UIEventListener
local ET = LuaFramework.EventTrigger
local UE = UnityEngine




require "Common/class"
require "Common/define"
require "Common/functions"

local hero_info = require('Data/HERO_INFO')
local sprite_proxy = require('Logic.SpriteProxy')

local cls = {}

cls = class(require "View/BasePanel")
HeroPanel = cls


function cls:ctor(go)
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.Normal
    self.toe_all = Util.Child(self.transform, "toe_0")
    self.toe_front = Util.Child(self.transform, "toe_1")
    self.toe_middle = Util.Child(self.transform, "toe_2")
    self.toe_back = Util.Child(self.transform, "toe_3")
    self.toe_prefab = Util.Child(self.transform, "toe_4")
    self.content = Util.Child(self.transform, "img_frame/Viewport/Content")
    self.img_frame = Util.Child(self.transform, "img_frame").transform
    self.img_frame:SetAsLastSibling()
    self.UIEventListener = go:AddComponent(typeof(UIEL))
    self.UIEventListener.self = self

end

function cls:Awake()
    --self:LoadPrefabs()
    self:InstantiateObjs()
end

--注册点击监听事件--
function cls:RegistyEvents()

    self.UIEventListener:AddToggleChange(self.toe_all, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_front, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_middle, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_back, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_prefab, self.OnToggleChange)

    self.AddEvent('MESSAGE_ADDITEM', self.OnMessage)
    self.AddEvent(Protocal.REQ_HERO_INDEX, self.OnMessage)

end

function cls:FunctionDefine()
    self.OnMessage = function(message)
        if message == nil then return end
        local name = message.name
        local data = message.data
        if name == Protocal.REQ_HERO_INDEX then
            local msg = {}
            msg.name = Protocal.RESP_HERO_INDEX
            msg.data = self.i_select_hero_index
            self.BrocastEvent(msg.name, msg)
        end
    end

    self.onItemClick = function(go, data)
        local name = go.name
        local index = string.split(name, '/')
        self.i_select_hero_index = tonumber(index[2])
        uiMgr:ShowUIForms('HeroDetailPanel')
    end
end


function cls:OnToggleChange(go, isOn)
    print('OnToggleChange', go, isOn)
    if go == nil or not isOn then return end

    local names = string.split(go.name, '_')
    for k, v in pairs(names) do
        print(k, v)
    end
    local site = tonumber(names[2])
    print('site', site, type(site))
    if isnumber(site) then
        local showlist = {}
        local unshowlist = {}
        for k, v in pairs(self.hero_list) do
            if site == 0 or site == v.HERO_SITE then
                table.insert(showlist, v.gameObject)
            else
                table.insert(unshowlist, v.gameObject)
            end
        end

        for _, v in pairs(showlist) do
            v:SetActive(true)
        end

        for _, v in pairs(unshowlist) do
            v:SetActive(false)
        end
    end

    self.img_frame:SetAsLastSibling()
    go.transform:SetAsLastSibling()

    --if name == 'toe_all' and isOn then
    --    logWarn('toe_all is '..tostring(isOn))
    --    self.img_frame:SetAsLastSibling()
    --    go.transform:SetAsLastSibling()
    --elseif name == 'toe_front' and isOn then
    --    logWarn('toe_front is '..tostring(isOn))
    --    self.img_frame:SetAsLastSibling()
    --    go.transform:SetAsLastSibling()
    --elseif name == 'toe_middle' and isOn then
    --    logWarn('toe_middle is '..tostring(isOn))
    --    self.img_frame:SetAsLastSibling()
    --    go.transform:SetAsLastSibling()
    --elseif name == 'toe_back' and isOn then
    --    logWarn('toe_back is '..tostring(isOn))
    --    self.img_frame:SetAsLastSibling()
    --    go.transform:SetAsLastSibling()
    --elseif name == 'toe_prefab' and isOn then
    --    logWarn('toe_prefab is '..tostring(isOn))
    --    self.img_frame:SetAsLastSibling()
    --    go.transform:SetAsLastSibling()
    --end
end

function cls:Display()
    self.gameObject:SetActive(true)
    --self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();

end

function cls:Redisplay()
    self.gameObject:SetActive(true)
    -- self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();
end

function cls:InstantiateObjs()
    self.hero_list = {}
    local headimgs = sprite_proxy.headimg

    local goItem = Util.Child(self.content, 'heroitem')
    for i, v in ipairs(hero_info) do
        local item = {}
        item.name = 'hero/'..tostring(i)
        local go = UE.GameObject.Instantiate(goItem)
        go.name = item.name
        local transform = go.transform
        transform:SetParent(self.content.transform)
        transform.localScale = Vector3.one
        item.gameObject = go
        item.HERO_ID = v.HERO_ID
        item.HERO_SITE = v.HERO_SITE
        item.headimg = Util.Child(transform, 'img_frame/img_head'):GetComponent(typeof(UE.UI.Image))
        item.txt_heroname = Util.Child(transform, 'img_frame/txt_heroname'):GetComponent(typeof(UE.UI.Text))
        item.headimg.sprite = headimgs[v.HERO_SPRITE]
        item.txt_heroname.text = v.HERO_NAME
        item.listener = go:AddComponent(typeof(ET))
        item.listener.onClick = item.listener.onClick + self.onItemClick
        --print('onClick', type(item.listener.onClick))
        self.hero_list[i] = item
    end
    goItem:SetActive(false)
    self:OnToggleChange(self.toe_all, true)
end

function cls:LoadPrefabs()

    self.onFinishLoadItem = function(objs)
        self.hero_item = objs[0]
    end

    self.sprites = {}
    self.sprites_name = self.GetHeroSprites()

    self.onFinishLoadSprite = function(objs)
        for i = 1, #self.sprites_name do
            self.sprites[self.sprites_name[i]] = objs[i - 1]
        end

        self.hero_list = {}
        local goItem = Util.Child(self.content, 'heroitem')
        for i, v in ipairs(hero_info) do
            local item = {}
            item.name = 'hero/'..tostring(i)
            local go = UE.GameObject.Instantiate(goItem)
            go.name = item.name
            local transform = go.transform
            transform:SetParent(self.content.transform)
            transform.localScale = Vector3.one
            item.headimg = Util.Child(transform, 'img_frame/img_head'):GetComponent(typeof(UE.UI.Image))
            item.txt_heroname = Util.Child(transform, 'img_frame/txt_heroname'):GetComponent(typeof(UE.UI.Text))
            item.headimg.sprite = self.sprites[v.HERO_SPRITE]
            item.txt_heroname.text = v.HERO_NAME
            item.listener = go:AddComponent(typeof(ET))
            item.listener.onClick = item.listener.onClick + self.onItemClick
            --print('onClick', type(item.listener.onClick))
            self.hero_list[i] = item
        end
        goItem:SetActive(false)
        self:OnToggleChange(self.toe_all, true)
    end

    resMgr:LoadPrefab('HeroPanel', {'heroitem'}, self.onFinishLoadItem)
    resMgr:LoadSprite('headimg', self.sprites_name, self.onFinishLoadSprite)
end


--Data Proxy
function cls.GetHeroSprites()
    local sprites = {}
    for i = 1, #hero_info do
        sprites[i] = hero_info[i].HERO_SPRITE
    end
    return sprites
end

return cls
--endregion
