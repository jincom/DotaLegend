require('Common.class')

---@class
local M = class()

function M:ctor(go)
    self.a = 'a'
    self.go = go
end

function M:Awake()
    print('Awake')
end

function M:Start()
    print('Start')
    print('TestMoudle.a', self.a)
    print('TyesMoudle.go', self.go.name)
end

function M:OnEnable()
    print('OnEnable')
end

function M:OnDisable()
    print('OnDisable')
end

return M

