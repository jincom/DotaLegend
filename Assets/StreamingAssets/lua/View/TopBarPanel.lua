--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
require "Common/class"
require "Common/define"
require "Common/functions"

local cls = class(require "View/BasePanel")

function cls:ctor(go)
    self.btn_back = self.transform:FindChild("bg/btn_back").gameObject
    self.bgRectTransform = self.transform:FindChild("bg"):GetComponent("RectTransform")
    self.baseUIForm.CurrentUIType.UIForms_Type = UIFormsType.Fixed
end

function cls:Display()
    --self.rectTransform:DOAnchorPos(Vector2.New(0, 33), 0.4)
    --self.transform:DOLocalMoveY(33, 0.4):From()
    self.bgRectTransform:DOAnchorPos(Vector2.New(37, 290), 0.4, false):From()
    self.gameObject:SetActive(true)
end

function cls:Redisplay()
    --self.rectTransform:DOAnchorPos(Vector2.New(0, 33), 0.4)
    --self.transform:DOLocalMoveY(33, 0.4):From()
    self.bgRectTransform:DOAnchorPos(Vector2.New(37, 290), 0.4, false):From()
    self.gameObject:SetActive(true)
end

function cls:RegistyEvent()
    self.baseUIForm:AddClickListener(self.btn_back, self.OnBackClick) 
end

function cls:OnBackClick(go)
    logWarn("OnBtn_BackClick")
    self.baseUIForm:CloseUIForm('MainPanel')
    self.baseUIForm:CloseUIForm()
end



TopBarPanel = cls
return cls


--endregion
