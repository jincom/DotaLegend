﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class LuaFramework_AppConstWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(LuaFramework.AppConst), typeof(System.Object));
		L.RegFunction("New", _CreateLuaFramework_AppConst);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("LogMode", get_LogMode, set_LogMode);
		L.RegVar("ThreadDownLoad", get_ThreadDownLoad, set_ThreadDownLoad);
		L.RegVar("DebugMode", get_DebugMode, set_DebugMode);
		L.RegVar("ExampleMode", get_ExampleMode, set_ExampleMode);
		L.RegVar("UpdateMode", get_UpdateMode, set_UpdateMode);
		L.RegVar("LuaByteMode", get_LuaByteMode, set_LuaByteMode);
		L.RegVar("LuaBundleMode", get_LuaBundleMode, set_LuaBundleMode);
		L.RegVar("TimerInterval", get_TimerInterval, set_TimerInterval);
		L.RegVar("GameFrameRate", get_GameFrameRate, set_GameFrameRate);
		L.RegVar("AppName", get_AppName, set_AppName);
		L.RegVar("LuaTempDir", get_LuaTempDir, set_LuaTempDir);
		L.RegVar("AppPrefix", get_AppPrefix, set_AppPrefix);
		L.RegVar("ExtName", get_ExtName, set_ExtName);
		L.RegVar("AssetDir", get_AssetDir, set_AssetDir);
		L.RegVar("WebUrl", get_WebUrl, set_WebUrl);
		L.RegVar("ConfigurationUrl", get_ConfigurationUrl, set_ConfigurationUrl);
		L.RegVar("UserId", get_UserId, set_UserId);
		L.RegVar("SocketPort", get_SocketPort, set_SocketPort);
		L.RegVar("SocketAddress", get_SocketAddress, set_SocketAddress);
		L.RegVar("FrameworkRoot", get_FrameworkRoot, null);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateLuaFramework_AppConst(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				LuaFramework.AppConst obj = new LuaFramework.AppConst();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: LuaFramework.AppConst.New");
			}
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LogMode(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.LogMode);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ThreadDownLoad(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.ThreadDownLoad);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_DebugMode(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.DebugMode);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ExampleMode(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.ExampleMode);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_UpdateMode(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.UpdateMode);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LuaByteMode(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.LuaByteMode);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LuaBundleMode(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushboolean(L, LuaFramework.AppConst.LuaBundleMode);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_TimerInterval(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, LuaFramework.AppConst.TimerInterval);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_GameFrameRate(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, LuaFramework.AppConst.GameFrameRate);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_AppName(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.AppName);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LuaTempDir(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.LuaTempDir);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_AppPrefix(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.AppPrefix);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ExtName(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.ExtName);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_AssetDir(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.AssetDir);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_WebUrl(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.WebUrl);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_ConfigurationUrl(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.ConfigurationUrl);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_UserId(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.UserId);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SocketPort(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushinteger(L, LuaFramework.AppConst.SocketPort);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_SocketAddress(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.SocketAddress);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_FrameworkRoot(IntPtr L)
	{
		try
		{
			LuaDLL.lua_pushstring(L, LuaFramework.AppConst.FrameworkRoot);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LogMode(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.LogMode = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ThreadDownLoad(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.ThreadDownLoad = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_DebugMode(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.DebugMode = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ExampleMode(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.ExampleMode = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_UpdateMode(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.UpdateMode = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LuaByteMode(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.LuaByteMode = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LuaBundleMode(IntPtr L)
	{
		try
		{
			bool arg0 = LuaDLL.luaL_checkboolean(L, 2);
			LuaFramework.AppConst.LuaBundleMode = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_TimerInterval(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			LuaFramework.AppConst.TimerInterval = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_GameFrameRate(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			LuaFramework.AppConst.GameFrameRate = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_AppName(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.AppName = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_LuaTempDir(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.LuaTempDir = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_AppPrefix(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.AppPrefix = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ExtName(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.ExtName = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_AssetDir(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.AssetDir = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_WebUrl(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.WebUrl = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_ConfigurationUrl(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.ConfigurationUrl = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_UserId(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.UserId = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SocketPort(IntPtr L)
	{
		try
		{
			int arg0 = (int)LuaDLL.luaL_checknumber(L, 2);
			LuaFramework.AppConst.SocketPort = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_SocketAddress(IntPtr L)
	{
		try
		{
			string arg0 = ToLua.CheckString(L, 2);
			LuaFramework.AppConst.SocketAddress = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

