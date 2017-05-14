---
--- Created by Administrator.
--- DateTime: 2017/5/14 1:50
---
local class = require('Common/class')
local LuaBehaviour = LuaFramework.LuaBehaviour

function AddLuaComponent(gameObject, luacomponent)
    if not isstring(luacomponent) then
        return false, 'luacomponent not a string type.'
    end
    local component = class(require(luacomponent))
    local peer = component.new(gameObject)
    local luabehaviour = gameObject:AddComponent(typeof(LuaBehaviour))
    tolua.setpeer(peer, luabehaviour)

end

function luabind(luabehaviour, luacomponent)
    if not isstring(luacomponent) then
        return false, 'luacomponent not a string type.'
    end
    if not isuserdata(luabehaviour) then
        return false, 'luabehaviour not a userdata type.'
    end
    local class = require('Common/class')
    local component = class(require(luacomponent))
    local gameObject = luabehaviour.gameObject
    local peer = component.new(gameObject)
    tolua.setpeer(peer, luabehaviour)
    return peer, component
end