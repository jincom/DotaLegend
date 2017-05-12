--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
local UIEL = LuaFramework.UIEventListener
local UE = UnityEngine
local RectTransform = UE.RectTransform
local EventTrigger = LuaFramework.EventTrigger
local CanvasScaler = UE.UI.CanvasScaler
local Screen = UE.Screen

local max = math.max
local min = math.min


require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class(require "View/BasePanel")

function cls:ctor(go)
    --logWarn("MessagePanel CTOR")
    self.baseUIForm.CurrentUIType.UIForms_ShowMode = UIFormShowMode.Normal
    self.baseUIForm.CurrentUIType.UIForms_Type =  UIFormsType.Normal

    self.layers = {}
    self.layers[1] = Util.Child(go, 'main_ground_layer'):GetComponent(typeof(RectTransform))
    self.layers[2] = Util.Child(go, 'main_mountain_layer'):GetComponent(typeof(RectTransform))
    self.layers[3] = Util.Child(go, 'main_cloud_layer'):GetComponent(typeof(RectTransform))

    self.offsets = {}
    self.offsets[1] = 1055
    self.offsets[2] = 680
    self.offsets[3] = 400

    self.drag_trigger = Util.Child(go, 'main_ground_layer/drag_trigger')

    self.canvas_scaler = GameObject.FindWithTag('_TagCanvas'):GetComponent(typeof(CanvasScaler))
    self.reference_resolution = self.canvas_scaler.referenceResolution
    self.reference_aspect = self.reference_resolution.x / self.reference_resolution.y
    self.screen_width = Screen.width
    self.screen_height = Screen.height
    self.real_aspect = self.screen_width / self.screen_height
    self.delta_offset = (self.real_aspect - self.reference_aspect) / self.reference_aspect * self.screen_width

    self.location = 0
    self.max_tween_time = 0.5
    self.tween_time = 0
    self.is_tween = false

end

function cls:Awake()
    --self.listener = EventTrigger.Get(self.drag_trigger)
    local listener = self.drag_trigger:AddComponent(typeof(EventTrigger))
    listener.onDrag = listener.onDrag + self.OnDrag
    listener.onEndDrag = listener.onEndDrag + self.OnEndDrag
end

function cls:Display()
    self.gameObject:SetActive(true)
    self.rectTransform.anchoredPosition = Vector2(0, 0)
    --print(tostring(self.rectTransform.anchoredPosition))
    
end

function cls:Redisplay()
    self.gameObject:SetActive(true)
   -- self.frameRectTrans:DOAnchorPos(Vector2.New(0, -50), 0.4, false):From();
end

--注册点击监听事件--
function cls:RegistyEvents()
    UpdateBeat:Add(self.Update)
    OnScreenChange:Add(self.OnScreenChange)

end

function cls:FunctionDefine()
    ----------------Update------------------------
    self.Update = function()
        if self.is_tween then
            self.tween_time = self.tween_time + Time.deltaTime
            if self.tween_time <= self.max_tween_time then
                local offset = (self.last_delta / (self.offsets[1] - self.delta_offset) *
                (1 - self.tween_time / self.max_tween_time))
                self.location = self.location + offset
                self:SetPosition(self.location)
            else
                self.is_tween = false
            end
        end
    end
    ----------------OnDrag------------------------
    self.OnDrag = function(go, data)
        self.tween_time = 0
        self.is_tween = false
        self.location = self.location + data.delta.x / (self.offsets[1] - self.delta_offset)
        self:SetPosition(self.location)
    end
    ---------------OnEndDrag----------------------
    self.OnEndDrag = function(go, data)
        self.last_delta = data.delta.x
        self.is_tween = true
    end
    ----------------OnScreenChange--------------------------------
    self.OnScreenChange = function(width, height)
        self.screen_width = width
        self.screen_height = height
        self.real_aspect = self.screen_width / self.screen_height
        self.delta_offset = (self.real_aspect - self.reference_aspect) / self.reference_aspect * self.screen_width
    end

end

function cls:SetPosition(location)
    if location > 0 then
        location = 0
    elseif location < -1 then
        location = -1
    end
    self.location = location
    local layers = self.layers
    local offsets = self.offsets
    local delta_offset = self.delta_offset
    for i, v in ipairs(layers) do
        v.anchoredPosition = Vector2(location * (offsets[i] - delta_offset), 0)
    end
end

function cls:OnMessage(message)

end



MainPanel = cls
return cls
--endregion
