--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
local UIEL = LuaFramework.UIEventListener
local UE = UnityEngine
local RectTransform = UE.RectTransform


require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class(require "View/BasePanel")

function cls:ctor(go)
    logWarn("MessagePanel CTOR")
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.Normal

    self.layer_count = 3
    self.ground_layer = Util.Child(go, 'main_ground_layer'):GetComponent(typeof(RectTransform))
    self.mountain_layer = Util.Child(go, 'main_mountain_layer'):GetComponent(typeof(RectTransform))
    self.cloud_layer = Util.Child(go, 'main_cloud_layer'):GetComponent(typeof(RectTransform))

    self.offset_ground = 1055
    self.offset_mountain = 680
    self.offset_cloud = 400

    self.max_tween_time = 0.5
    self.tween_time = 0
    self.is_tween = false

    self.drag_trigger = Util.Child(go, '')

    self.location = 0

end

function cls:Awake()

end


function cls:OnToggleChange(go, isOn)

end

function cls:Display()
    self.gameObject:SetActive(true)
    self.rectTransform.anchoredPosition = Vector2(0, 0)
    print(tostring(self.rectTransform.anchoredPosition))
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



MainPanel = cls
return cls
--endregion
