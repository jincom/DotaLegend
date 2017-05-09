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

local cls = {}

cls = class(require "View/BasePanel")
HeroPanel = cls


function cls:ctor(go)
    logWarn("MessagePanel CTOR")
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.Normal
    self.toe_all = Util.Child(self.transform, "toe_all")
    self.toe_front = Util.Child(self.transform, "toe_front")
    self.toe_middle = Util.Child(self.transform, "toe_middle")
    self.toe_back = Util.Child(self.transform, "toe_back")
    self.toe_prefab = Util.Child(self.transform, "toe_prefab")
    self.content = Util.Child(self.transform, "img_frame/Viewport/Content")
    self.img_frame = Util.Child(self.transform, "img_frame").transform
    self.img_frame:SetAsLastSibling()
    self.UIEventListener = go:AddComponent(typeof(UIEL))
    self.UIEventListener.self = self

end

function cls:Awake()
    self:LoadPrefabs()
    --self:InstantiateObjs()
end

--注册点击监听事件--
function cls:RegistyEvents()
    logWarn("MessagePanel RegistyEvent")
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))
    --self.baseUIForm:AddClickListener(self.btn_confirm, self.OnConfirmClick)
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))
    --logWarn(type(self.OnToggleChange))

    self.UIEventListener:AddToggleChange(self.toe_all, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_front, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_middle, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_back, self.OnToggleChange)
    self.UIEventListener:AddToggleChange(self.toe_prefab, self.OnToggleChange)

    self:AddEvent('MESSAGE_ADDITEM', self.OnMessage)
    self:AddEvent(Protocal.REQ_HERO_INDEX, self.OnMessage)

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
            self:BrocastEvent(msg.name, msg)
        end
    end

    self.onItemClick = function(go, data)
        local name = go.name
        local index = string.split(name, '/')
        self.i_select_hero_index = tonumber(index[2])
        print('i_select_hero_index', self.i_select_hero_index)
        --msg = {name = Protocal.RESP_HERO_INDEX, data = self.i_select_hero_index}
        --self:BrocastEvent(Protocal.RESP_HERO_INDEX, msg)
        uiMgr:ShowUIForms('HeroDetailPanel')
    end
end


function cls:OnToggleChange(go, isOn)
    logWarn('OnToggleChange')
    if go == nil then return end

    local name = go.name
    if name == 'toe_all' and isOn then
        logWarn('toe_all is '..tostring(isOn))
        self.img_frame:SetAsLastSibling()
        go.transform:SetAsLastSibling()
    elseif name == 'toe_front' and isOn then
        logWarn('toe_front is '..tostring(isOn))
        self.img_frame:SetAsLastSibling()
        go.transform:SetAsLastSibling()
    elseif name == 'toe_middle' and isOn then
        logWarn('toe_middle is '..tostring(isOn))
        self.img_frame:SetAsLastSibling()
        go.transform:SetAsLastSibling()
    elseif name == 'toe_back' and isOn then
        logWarn('toe_back is '..tostring(isOn))
        self:BrocastEvent('MESSAGE_ADDITEM', {name = 'MESSAGE_ADDITEM'})
        self.img_frame:SetAsLastSibling()
        go.transform:SetAsLastSibling()
    elseif name == 'toe_prefab' and isOn then
        logWarn('toe_prefab is '..tostring(isOn))
        self.img_frame:SetAsLastSibling()
        go.transform:SetAsLastSibling()
    end
end

function cls:Display()
    self.gameObject:SetActive(true)
    --self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();

end

function cls:Redisplay()
    self.gameObject:SetActive(true)
    -- self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();
end



function cls:OnMessage(message)
    print('hero panel on message', message.name)
    if message == nil then return end
    local name = message.name
    local data = message.data
    if name == 'MESSAGE_ADDITEM' then
        local item = UE.GameObject.Instantiate(self.hero_item)
        item.transform:SetParent(self.content.transform)
        item.transform.localScale = Vector3.one
        local trigger = item:AddComponent(typeof(ET))
    elseif name == Protocal.REQ_HERO_INDEX then
        local msg = {}
        msg.name = Protocal.RESP_HERO_INDEX
        msg.data = 3
        print(msg.data)
        self:BrocastEvent(msg.name, msg)
        print(type(self.skill1))
    end

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
    end

    resMgr:LoadPrefab('HeroPanel', {'heroitem'}, self.onFinishLoadItem)
    resMgr:LoadSprite('headimg', self.sprites_name, self.onFinishLoadSprite)
end

function cls:InstantiateObjs()
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
        item.onClick = ET.Get(go).onClick
        item.onClick = item.onClick + self.onItemClick
        self.hero_list[i] = item
    end
    goItem:SetActive(false)
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
