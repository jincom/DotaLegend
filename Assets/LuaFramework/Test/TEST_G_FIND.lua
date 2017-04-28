function declare(name, initval)
  rawset(_G, name, initval or false)
end

setmetatable(_G, {
    __newindex = function(_, var)
        error('attempt to write a undeclared golbal variable '..var, 2)
    end,
    __index = function(_, var)
        error('attempt to read a undeclared golbal variable '..var, 2)
    end,
})
require 'aaa'
declare ("M", 1)
print(M)