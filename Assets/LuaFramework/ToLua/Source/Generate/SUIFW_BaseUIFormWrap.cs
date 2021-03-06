﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class SUIFW_BaseUIFormWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(SUIFW.BaseUIForm), typeof(View));
		L.RegFunction("OnInitialize", OnInitialize);
		L.RegFunction("Display", Display);
		L.RegFunction("Hiding", Hiding);
		L.RegFunction("Redisplay", Redisplay);
		L.RegFunction("Freeze", Freeze);
		L.RegFunction("OpenUIForm", OpenUIForm);
		L.RegFunction("CloseUIForm", CloseUIForm);
		L.RegFunction("ReceiveMessage", ReceiveMessage);
		L.RegFunction("Show", Show);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("CurrentUIType", get_CurrentUIType, set_CurrentUIType);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OnInitialize(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			obj.OnInitialize();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Display(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			obj.Display();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Hiding(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			obj.Hiding();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Redisplay(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			obj.Redisplay();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Freeze(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			obj.Freeze();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OpenUIForm(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(SUIFW.BaseUIForm), typeof(string)))
			{
				SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				obj.OpenUIForm(arg0);
				return 0;
			}
			else if (count == 3 && TypeChecker.CheckTypes(L, 1, typeof(SUIFW.BaseUIForm), typeof(string), typeof(bool)))
			{
				SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				bool arg1 = LuaDLL.lua_toboolean(L, 3);
				obj.OpenUIForm(arg0, arg1);
				return 0;
			}
			else if (count == 4 && TypeChecker.CheckTypes(L, 1, typeof(SUIFW.BaseUIForm), typeof(string), typeof(bool), typeof(bool)))
			{
				SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				bool arg1 = LuaDLL.lua_toboolean(L, 3);
				bool arg2 = LuaDLL.lua_toboolean(L, 4);
				obj.OpenUIForm(arg0, arg1, arg2);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: SUIFW.BaseUIForm.OpenUIForm");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int CloseUIForm(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1 && TypeChecker.CheckTypes(L, 1, typeof(SUIFW.BaseUIForm)))
			{
				SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.ToObject(L, 1);
				obj.CloseUIForm();
				return 0;
			}
			else if (count == 2 && TypeChecker.CheckTypes(L, 1, typeof(SUIFW.BaseUIForm), typeof(string)))
			{
				SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.ToObject(L, 1);
				string arg0 = ToLua.ToString(L, 2);
				obj.CloseUIForm(arg0);
				return 0;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to method: SUIFW.BaseUIForm.CloseUIForm");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int ReceiveMessage(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 3);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			string arg0 = ToLua.CheckString(L, 2);
			SUIFW.MessageCenter.DelMessageDelivery arg1 = null;
			LuaTypes funcType3 = LuaDLL.lua_type(L, 3);

			if (funcType3 != LuaTypes.LUA_TFUNCTION)
			{
				 arg1 = (SUIFW.MessageCenter.DelMessageDelivery)ToLua.CheckObject(L, 3, typeof(SUIFW.MessageCenter.DelMessageDelivery));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 3);
				arg1 = DelegateFactory.CreateDelegate(typeof(SUIFW.MessageCenter.DelMessageDelivery), func) as SUIFW.MessageCenter.DelMessageDelivery;
			}

			obj.ReceiveMessage(arg0, arg1);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Show(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)ToLua.CheckObject(L, 1, typeof(SUIFW.BaseUIForm));
			string arg0 = ToLua.CheckString(L, 2);
			string o = obj.Show(arg0);
			LuaDLL.lua_pushstring(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int op_Equality(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.Object arg0 = (UnityEngine.Object)ToLua.ToObject(L, 1);
			UnityEngine.Object arg1 = (UnityEngine.Object)ToLua.ToObject(L, 2);
			bool o = arg0 == arg1;
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_CurrentUIType(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)o;
			SUIFW.UIType ret = obj.CurrentUIType;
			ToLua.PushObject(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index CurrentUIType on a nil value" : e.Message);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_CurrentUIType(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			SUIFW.BaseUIForm obj = (SUIFW.BaseUIForm)o;
			SUIFW.UIType arg0 = (SUIFW.UIType)ToLua.CheckObject(L, 2, typeof(SUIFW.UIType));
			obj.CurrentUIType = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o == null ? "attempt to index CurrentUIType on a nil value" : e.Message);
		}
	}
}

