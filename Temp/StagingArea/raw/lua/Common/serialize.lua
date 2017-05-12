--region *.lua
--Date
--此文件由[BabeLua]插件自动生成

--[[
 file name :    table序列化和反序列化的问题.lua
 author  :      Clark/陈泽丹
 created :      2011-12-22
 备注：
 支持table的递归结构，但数据类型不支持function属性(因为function只是记录地址，在不同机器上序列化和反序列化后的地址相同没什么意义)
 
 后记:  
 郁闷， 写完到网上一搜， 才发现原来Lua有提供一些现成的函数可用来做序列化和反序列化操作。。。  
 其中loadstring可以执行字符串。  
 通过  
 lua = "return " .. lua  
 local func = loadstring(lua)  
 即实现了反序列化。。。
--]]



----------- 个人编写 -----------------

--table转字符串(只取标准写法，以防止因系统的遍历次序导致ID乱序)
function sz_T2S(_t)
    local szRet = "{"
    function doT2S(_i, _v)
        if "number" == type(_i) then
            szRet = szRet .. "[" .. _i .. "] = "
            if "number" == type(_v) then
                szRet = szRet .. _v .. ","
            elseif "string" == type(_v) then
                szRet = szRet .. '"' .. _v .. '"' .. ","
            elseif "table" == type(_v) then
                szRet = szRet .. sz_T2S(_v) .. ","
            else
                szRet = szRet .. "nil,"
            end
        elseif "string" == type(_i) then
            szRet = szRet .. '["' .. _i .. '"] = '
            if "number" == type(_v) then
                szRet = szRet .. _v .. ","
            elseif "string" == type(_v) then
                szRet = szRet .. '"' .. _v .. '"' .. ","
            elseif "table" == type(_v) then
                szRet = szRet .. sz_T2S(_v) .. ","
            else
                szRet = szRet .. "nil,"
            end
        end
    end
    table.foreach(_t, doT2S)
    szRet = szRet .. "}"
    return szRet
end



--字符串转table(反序列化,异常数据直接返回nil)
function t_S2T(_szText)
	--栈
	function stack_newStack()
		local first = 1
		local last = 0
		local stack = {}
		local m_public = {}
		function m_public.pushBack(_tempObj)
			last = last + 1
			stack[last] = _tempObj
		end
		function m_public.temp_getBack()
			if m_public.bool_isEmpty() then
				return nil
			else
				local val = stack[last]
				return val
			end
		end
		function m_public.popBack()
			stack[last] = nil
			last = last - 1
		end
		function m_public.bool_isEmpty()
			if first > last then
				first = 1
				last = 0
				return true
			else
				return false
			end
		end
		function m_public.clear()
			while false == m_public.bool_isEmpty() do
				stack.popFront()
			end
		end
		return m_public
	end
	function getVal(_szVal)
		local s, e = string.find(_szVal,'"',1,string.len(_szVal))
		if nil ~= s and nil ~= e then
			--return _szVal
			return string.sub(_szVal,2,string.len(_szVal)-1)
		else
			return tonumber(_szVal)
		end
	end

	local m_szText = _szText
	local charTemp = string.sub(m_szText,1,1)
	if "{" == charTemp then
		m_szText = string.sub(m_szText,2,string.len(m_szText))
	end
	function doS2T()
		local tRet = {}
		local tTemp = nil
		local stackOperator = stack_newStack()
		local stackItem = stack_newStack()
		local val = ""
		while true do
			local dLen = string.len(m_szText)
			if dLen <= 0 then
				break
			end

			charTemp = string.sub(m_szText,1,1)
			if "[" == charTemp or "=" == charTemp then
				stackOperator.pushBack(charTemp)
				m_szText = string.sub(m_szText,2,dLen)
			elseif '"' == charTemp then
				local s, e = string.find(m_szText, '"', 2, dLen)
				if nil ~= s and nil ~= e then
					val = val .. string.sub(m_szText,1,s)
					m_szText = string.sub(m_szText,s+1,dLen)
				else
					return nil
				end
			elseif "]" == charTemp then
				if "[" == stackOperator.temp_getBack() then
					stackOperator.popBack()
					stackItem.pushBack(val)
					val = ""
					m_szText = string.sub(m_szText,2,dLen)
				else
					return nil
				end
			elseif "," == charTemp then
				if "=" == stackOperator.temp_getBack() then
					stackOperator.popBack()
					local Item = stackItem.temp_getBack()
					Item = getVal(Item)
					stackItem.popBack()
					if nil ~= tTemp then
						tRet[Item] = tTemp
						tTemp = nil
					else
						tRet[Item] = getVal(val)
					end
					val = ""
					m_szText = string.sub(m_szText,2,dLen)
				else
					return nil
				end
			elseif "{" == charTemp then
				m_szText = string.sub(m_szText,2,string.len(m_szText))
				local t = doS2T()
				if nil ~= t then
					szText = sz_T2S(t)
					tTemp = t
					--val = val .. szText
				else
					return nil
				end
			elseif "}" == charTemp then
				m_szText = string.sub(m_szText,2,string.len(m_szText))
				return tRet
			elseif " " ~= charTemp then
				val = val .. charTemp
				m_szText = string.sub(m_szText,2,dLen)
			else
				m_szText = string.sub(m_szText,2,dLen)
			end
		end
		return tRet
	end
	local t = doS2T()
	return t
end

--[[
t = {1,2,3,"sdf", a = "df", qe = 3, {7}, qq = {{2,3,a={}}}, }
t.f = {1,2,3}
t.m = {3,4,5}
szT = sz_T2S(t)
print(szT)
print("-----------")
tq = t_S2T(szT)
szT = sz_T2S(tq)
print(szT)
--]]


-------- 网上资料 -------------------



function serialize(obj)
	local lua = ""
	local t = type(obj)
	if t == "number" then
		lua = lua .. obj
	elseif t == "boolean" then
		lua = lua .. tostring(obj)
	elseif t == "string" then
		lua = lua .. string.format("%q", obj)
	elseif t == "table" then
		lua = lua .. "{\n"
	for k, v in pairs(obj) do
		lua = lua .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ",\n"
	end
	local metatable = getmetatable(obj)
		if metatable ~= nil and type(metatable.__index) == "table" then
		for k, v in pairs(metatable.__index) do
			lua = lua .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ",\n"
		end
	end
		lua = lua .. "}"
	elseif t == "nil" then
		return nil
	else
		error("can not serialize a " .. t .. " type.")
	end
	return lua
end

function unserialize(lua)
	local t = type(lua)
	if t == "nil" or lua == "" then
		return nil
	elseif t == "number" or t == "string" or t == "boolean" then
		lua = tostring(lua)
	else
		error("can not unserialize a " .. t .. " type.")
	end
	lua = "return " .. lua
	local func = loadstring(lua)
	if func == nil then
		return nil
	end
	return func()
end

--data = {["a"] = "a", ["b"] = "b", [1] = 1, [2] = 2, ["t"] = {1, 2, 3}}
--local sz = serialize(data)
--print(sz)
--print("---------")
--print(serialize(unserialize(sz)))

--endregion
