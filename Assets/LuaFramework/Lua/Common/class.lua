--region *.lua
--Date
--此文件由[BabeLua]插件自动
require "Common/define"
require "Common/functions"
require "Common/serialize"

--以某个类为索引，返回这个类的成员变量和方法
local _class = {}

function class(super)
	local class_type = {}
	class_type.ctor = false
	class_type.super = super
    
    --region class_type.new
	class_type.new = function(...) 
			local obj = {}
            --用递归的方式调用构造函数
			do
				local create
				create = function(c, ...)
					if c.super then
						create(c.super, ...)
					end
					if c.ctor then
						c.ctor(obj, ...)
					end
				end

				create(class_type, ...)
			end
            --设置类实例的元表的__index为vtbl
			setmetatable(obj, { __index = _class[class_type] })
			return obj
		end
    --endregion class_type.new

	local vtbl = {}
	_class[class_type] = vtbl
    --当修改class_type，相当于修改vtbl
	setmetatable(class_type, {__newindex =
		function(t, k, v)
			vtbl[k] = v
		end
	})

    --如果在类的vtbl找不到成员，会在他的super类的vtbl找这个成员，如此类推
	if super then
		setmetatable(vtbl, {__index =
			function(t, k)
				local ret = _class[super][k]
				vtbl[k] = ret
				return ret
			end
		})
	end

	return class_type
end

--base = class()
--function base:ctor(name)
--    self.t = {["name"] = name}
--end

--function base:hello()
--    logWarn('self.t.name:'..self.t.name)
--end

--base1 = class(base)
--base2 = class(base)

--ibase1 = base1.new("ibase1")
--ibase2 = base2.new("ibase2")
--ibase1:hello()
--ibase2:hello()
--end
--endregion

