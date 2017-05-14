local UE = UnityEngine
local RectTransform = UE.RectTransform

--Date
--此文件由[BabeLua]插件自动生成
require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class()
local EventCenter = require("events")

function cls:ctor(go)
    --在构造函数定义属于obj的变量
    --logWarn('BasePanel CTOR')
    self.gameObject = go
    self.transform = go.transform
    self.rectTransform = go:GetComponent(typeof(RectTransform))
    self.baseUIForm = go:GetComponent('LuaUIForm')
    --logWarn('baseUIForm1 is '..type(self.baseUIForm))
end

function cls:Awake()
    --logWarn('BasePanel Awake')
    --self:RegistyEvents()
    --变量的初始化
end

function cls:RegistyEvents()
    --logWarn('BasePanel RegistyEvent')
end

function cls:FunctionDefine()

end

--初始化函数
function cls:OnInitialize()
    --logWarn('BasePanel OnInitialize')

    self:FunctionDefine()
    self:RegistyEvents()
end

--显示窗体方法
function cls:Display()
    --logWarn('BasePanel Display')
    self.gameObject:SetActive(true)
end

--隐藏窗体方法
function cls:Hiding()
    --logWarn('BasePanel Hiding')
    self.gameObject:SetActive(false)
end

--重新显示方法
function cls:Redisplay()
    --logWarn('BasePanel Redisplay')
    self.gameObject:SetActive(true)
end

--冻结窗体方法
function cls:Freeze()
    --logWarn('BasePanel Freeze')
end

--封装子类常用方法
function cls:OpenUIForm(uiFormName)
    if type(uiFormName) == 'string' then
        self.baseUIForm:OpenUIForm(uiFormName)
    else
        error('UIFormName not a string type', 1)
    end
end

function cls:CloseUIForm(uiFormName)
    if type(uiFormName) == 'string' then
        self.baseUIForm:CloseUIForm(uiFormName)
    else
        error('UIFormName not a string type', 1)
    end
end

--注册Panel事件
function cls:AddEvent(event_name, handler)
    EventCenter.AddListener(event_name, handler)
end

--广播Panel事件
function cls:BrocastEvent(event_name, ...)
    EventCenter.Brocast(event_name, ...)
end

--反注册Panel事件
function cls:RemoveEvent(event_name, handler)
    EventCenter.RemoveListener(event_name, handler)
end

function cls:OnMessage(message)
    --logWarn('BasePanel OnMessage')
end

return cls
--end

--endregion
