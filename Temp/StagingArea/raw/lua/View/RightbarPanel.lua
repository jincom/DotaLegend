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
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.Fixed
    
    self.UIEL = go:AddComponent(typeof(UIEL))
    self.UIEL.self = self
    local transform = go.transform
    self.Toggle = Util.Child(transform, 'Toggle')
    self.img_bar = Util.Child(transform, 'img_bar')
    self.btn_hero = Util.Child(transform, 'img_bar/btn_hero')
    
    self.toggle = self.Toggle:GetComponent(typeof(UE.UI.Toggle))
end

function cls:Awake()
    --resMgr:LoadPrefab('HeroPanel', {'heroitem'}, function(objs) self.hero_item = objs[0] end)
    self:ResetToggleState()
end

function cls:ResetToggleState()
    self.toggle.isOn = false
    self.img_bar:SetActive(false)
end

function cls:OnToggleChange(go, isOn)
    logWarn('OnToggleChange')
    if go == nil then return end
    
    local name = go.name
    if name == 'Toggle' then
      if self.img_bar.activeSelf ~= isOn then
        self.img_bar:SetActive(isOn)
      end    
    end
end

function cls:OnButtonClick(go)
    if go == nil then return end
    
    local name = go.name
    if name == 'btn_hero' then
      uiMgr:ShowUIForms('HeroPanel')
      self:ResetToggleState()
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
    
    self.UIEL:AddToggleChange(self.Toggle, self.OnToggleChange)
    self.UIEL:AddButtonClick(self.btn_hero, self.OnButtonClick)
    
end

function cls:OnMessage(message)
    
end



RightbarPanel = cls
return cls
--endregion
