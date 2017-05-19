local class = require('Common.LuaClass')

local M = class(require('Test.TestMoudle'))

function M:ctor()
    self.name = 'child'
    print('child ctor')
end

function M:OnEnable()
    print('OnEnable1')
end

function M:OnDisable()
    print('OnDisable1')
end

function M:PrintA()
    print('self type:', self.name)
end

return M