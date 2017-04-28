--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
require "Common/class"
require "Common/define"
require "Common/functions"


local cls = class()

function cls:ctor(go)
    --在构造函数定义属于obj的变量
    logWarn('BasePanel CTOR')
    self.gameObject = go
    self.transform = go.transform
    self.baseUIForm = self.gameObject:GetComponent('LuaUIForm')
    logWarn('baseUIForm1 is '..type(self.baseUIForm))
end

function cls:Awake()
    logWarn('BasePanel Awake')
    --变量的初始化
end

function cls:RegistyEvent()
    logWarn('BasePanel RegistyEvent')
end

--初始化函数
function cls:OnInitialize()
    logWarn('BasePanel OnInitialize')
    self:RegistyEvent()
end

--显示窗体方法
function cls:Display()
    logWarn('BasePanel Display')
    self.gameObject:SetActive(true)
end

--隐藏窗体方法
function cls:Hiding()
    logWarn('BasePanel Hiding')
    self.gameObject:SetActive(false)
end

--重新显示方法
function cls:Redisplay()
    logWarn('BasePanel Redisplay')
    self.gameObject:SetActive(true)
end

--冻结窗体方法
function cls:Freeze()
    logWarn('BasePanel Freeze')
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

function cls:OnMessage(message)
    logWarn('BasePanel OnMessage')
end

return cls
--end

--endregion