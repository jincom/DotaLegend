--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
local UIEL = LuaFramework.UIEventListener
local UE = UnityEngine


require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class(require "View/BasePanel")

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
    resMgr:LoadPrefab('HeroPanel', {'heroitem'}, function(objs) self.hero_item = objs[0] end)
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
    
end

function cls:OnMessage(message)
    print('onMessage')
    print(type(message))
    if message.name == 'MESSAGE_ADDITEM' then
        local item = UE.GameObject.Instantiate(self.hero_item)
        item.transform:SetParent(self.content.transform)
        item.transform.localScale = Vector3.one
    end
end



HeroPanel = cls
return cls
--endregion
