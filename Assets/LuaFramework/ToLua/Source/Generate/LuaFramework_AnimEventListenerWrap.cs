﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class LuaFramework_AnimEventListenerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(LuaFramework.AnimEventListener), typeof(UnityEngine.MonoBehaviour));
		L.RegFunction("Get", Get);
		L.RegFunction("AddEvent", AddEvent);
		L.RegFunction("RemoveEvent", RemoveEvent);
		L.RegFunction("OnAnimEvent", OnAnimEvent);
		L.RegFunction("__eq", op_Equality);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegFunction("ObjectDelegate", LuaFramework_AnimEventListener_ObjectDelegate);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Get(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			UnityEngine.GameObject arg0 = (UnityEngine.GameObject)ToLua.CheckUnityObject(L, 1, typeof(UnityEngine.GameObject));
			LuaFramework.AnimEventListener o = LuaFramework.AnimEventListener.Get(arg0);
			ToLua.Push(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int AddEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 4);
			LuaFramework.AnimEventListener obj = (LuaFramework.AnimEventListener)ToLua.CheckObject(L, 1, typeof(LuaFramework.AnimEventListener));
			string arg0 = ToLua.CheckString(L, 2);
			float arg1 = (float)LuaDLL.luaL_checknumber(L, 3);
			LuaFramework.AnimEventListener.ObjectDelegate arg2 = null;
			LuaTypes funcType4 = LuaDLL.lua_type(L, 4);

			if (funcType4 != LuaTypes.LUA_TFUNCTION)
			{
				 arg2 = (LuaFramework.AnimEventListener.ObjectDelegate)ToLua.CheckObject(L, 4, typeof(LuaFramework.AnimEventListener.ObjectDelegate));
			}
			else
			{
				LuaFunction func = ToLua.ToLuaFunction(L, 4);
				arg2 = DelegateFactory.CreateDelegate(typeof(LuaFramework.AnimEventListener.ObjectDelegate), func) as LuaFramework.AnimEventListener.ObjectDelegate;
			}

			bool o = obj.AddEvent(arg0, arg1, arg2);
			LuaDLL.lua_pushboolean(L, o);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int RemoveEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 1);
			LuaFramework.AnimEventListener obj = (LuaFramework.AnimEventListener)ToLua.CheckObject(L, 1, typeof(LuaFramework.AnimEventListener));
			obj.RemoveEvent();
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int OnAnimEvent(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			LuaFramework.AnimEventListener obj = (LuaFramework.AnimEventListener)ToLua.CheckObject(L, 1, typeof(LuaFramework.AnimEventListener));
			UnityEngine.AnimationEvent arg0 = (UnityEngine.AnimationEvent)ToLua.CheckObject(L, 2, typeof(UnityEngine.AnimationEvent));
			obj.OnAnimEvent(arg0);
			return 0;
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
	static int LuaFramework_AnimEventListener_ObjectDelegate(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(LuaFramework.AnimEventListener.ObjectDelegate), func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateFactory.CreateDelegate(typeof(LuaFramework.AnimEventListener.ObjectDelegate), func, self);
				ToLua.Push(L, arg1);
			}
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}
