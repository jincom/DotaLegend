--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class(require "View/BasePanel")

function cls:ctor(go)
    logWarn("MessagePanel CTOR")
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.ReverseChange
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.PopUp
    self.frame = self.transform:FindChild("frame").gameObject
    self.frameRectTrans = self.frame:GetComponent('RectTransform')
    self.btn_confirm = self.transform:FindChild("frame/btn_confirm").gameObject
end

function cls:Display()
    self.gameObject:SetActive(true)
    self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();
    
end

function cls:Redisplay()
    self.gameObject:SetActive(true)
    self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();
end

--注册点击监听事件--
function cls:RegistyEvent()
    logWarn("MessagePanel RegistyEvent")
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))
    self.baseUIForm:AddClickListener(self.btn_confirm, self.OnConfirmClick)
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))
end

--点击登陆事件--
function cls:OnConfirmClick(go)
    logWarn('MessagePanel.OnConfirmClick ')
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))  
    
    self.baseUIForm:CloseUIForm()
end


MessagePanel = cls
return cls
--endregion
