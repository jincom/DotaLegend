--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class(require "View/BasePanel")

function cls:ctor(go)
    logWarn("MainPanel CTOR")
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.HideOther
    self.ModeGrid = self.transform:FindChild("ModeGrid").gameObject
    self.FirendList = self.transform:FindChild("FirendList").gameObject
    self.btn_new = self.transform:FindChild('btn_new').gameObject
end

function cls:Display()
    self.ModeGrid.transform.localScale = Vector3.zero
    self.FirendList.transform.localScale = Vector3.zero
    self.ModeGrid.transform:DOScale(Vector3.one, 0.4)
    self.FirendList.transform:DOScale(Vector3.one, 0.4)
    self.gameObject:SetActive(true)
end

function cls:Redisplay()
    self.ModeGrid.transform.localscale = Vector3.zero
    self.FirendList.transform.localscale = Vector3.zero
    self.ModeGrid.transform:DOScale(Vector3.one, 0.4)
    self.FirendList.transform:DOScale(Vector3.one, 0.4)
    self.gameObject:SetActive(true)
end

--注册点击监听事件--
function cls:RegistyEvent()
--    logWarn("MainPanel RegistyEvent")
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))
    self.baseUIForm:AddClickListener(self.btn_new, self.OnConfirmClick)
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))
end

--点击登陆事件--
function cls:OnConfirmClick(go)
--    logWarn('MainPanel.OnConfirmClick ')
    --logWarn('MessagePanel.baseUIForm is '..type(self.baseUIForm))  
    
    self.baseUIForm:OpenUIForm('MessagePanel')
end


MainPanel = cls
return cls
--endregion
