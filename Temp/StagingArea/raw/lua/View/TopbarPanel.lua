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
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.Fixed
    
end

function cls:Awake()
 
end


function cls:OnToggleChange(go, isOn)

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

    
end

function cls:OnMessage(message)

end



TopbarPanel = cls
return cls
--endregion
