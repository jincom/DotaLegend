require('Common.define')
local HERO_SKILLS = require('Data.HERO_SKILLS')
local HERO_INFO = require('Data.HERO_INFO')

local preload_list =
{
    'headimg',
    'skillicon',
}

local M = {}

for _, v in ipairs(preload_list) do
    local OnLoadFinished = function(objs)
        M[v] = {}
        local map = M[v]
        local sprites = objs:ToTable()
        for i, s in pairs(sprites) do
            if s then
                map[s.name] = s
            end
        end
        print('OnLoadFinished', v, objs.Length)
    end

    resMgr:LoadSprite(v, {'*'}, OnLoadFinished)
end


return M