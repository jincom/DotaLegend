local class = require('Common.LuaClass')
local UE = UnityEngine

local M = class()

function M:ctor()
    print('base ctor')
    --self.name = 'base'
end

function M:Awake()
    print('Awake')
end

function M:Start()
    print('Start')
end

function M:Update()
    if UE.Input.GetKeyDown(UE.KeyCode.Space) then
        print('key down')
    end
end

function M:OnEnable()
    print('OnEnable')
end

function M:OnDisable()
    print('OnDisable')
end

function M:PrintA()
    print('self type:', self.name)
end

return M

