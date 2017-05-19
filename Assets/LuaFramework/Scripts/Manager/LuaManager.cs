﻿using UnityEngine;
using System.Collections;
using LuaInterface;

namespace LuaFramework {
    public class LuaManager : Manager {
        private LuaState lua;
        private LuaLoader loader;
        private LuaLooper loop = null;

        public LuaState MainState
        {
            get { return lua; }
        }

        // Use this for initialization
        void Awake() {
            loader = new LuaLoader();
            lua = new LuaState();
            this.OpenLibs();
            lua.LuaSetTop(0);

            LuaBinder.Bind(lua);
            LuaCoroutine.Register(lua, this);
        }

        public void InitStart() {
            InitLuaPath();
            InitLuaBundle();
            this.lua.Start();    //启动LUAVM
            this.StartMain();
            this.StartLooper();
            //this.InitLuaView();
        }

        void StartLooper()
        {
            loop = gameObject.AddComponent<LuaLooper>();
            loop.luaState = lua;
        }

        void InitLuaView()
        {
            lua.DoFile("Common/class");
            lua.DoFile("View/BasePanel");
        }

        //cjson 比较特殊，只new了一个table，没有注册库，这里注册一下
        protected void OpenCJson()
        {
            lua.LuaGetField(LuaIndexes.LUA_REGISTRYINDEX, "_LOADED");
            lua.OpenLibs(LuaDLL.luaopen_cjson);
            lua.LuaSetField(-2, "cjson");

            lua.OpenLibs(LuaDLL.luaopen_cjson_safe);
            lua.LuaSetField(-2, "cjson.safe");
        }

        void StartMain() {
            lua.DoFile("Main.lua");

            LuaFunction main = lua.GetFunction("Main");
            main.Call();
            main.Dispose();
            main = null;    
        }

        /// <summary>
        /// 打開lua Socket
        /// </summary>
        protected void OpenLuaSocket()
        {
            //LuaConst.openLuaSocket = true;

            lua.BeginPreLoad();
            lua.RegFunction("socket.core", LuaDLL.luaopen_socket_core);
            lua.RegFunction("mime.core", LuaDLL.luaopen_mime_core);
            lua.EndPreLoad();
        }

        /// <summary>
        /// 初始化加载第三方库
        /// </summary>
        void OpenLibs() {
            lua.OpenLibs(LuaDLL.luaopen_pb);      
            lua.OpenLibs(LuaDLL.luaopen_sproto_core);
            lua.OpenLibs(LuaDLL.luaopen_protobuf_c);
            lua.OpenLibs(LuaDLL.luaopen_lpeg);
            lua.OpenLibs(LuaDLL.luaopen_bit);
            lua.OpenLibs(LuaDLL.luaopen_socket_core);

            if (LuaConst.openZbsDebugger)
            {
                gameObject.AddComponent<LuaClient>();
                this.OpenLuaSocket();
            }

            this.OpenCJson();
        }

        /// <summary>
        /// 初始化Lua代码加载路径
        /// </summary>
        void InitLuaPath()
        {
            if (AppConst.DebugMode)
            {
                string rootPath = AppConst.FrameworkRoot;
                lua.AddSearchPath(rootPath + "/Lua");
                //lua.AddSearchPath(rootPath + "/Lua/?");
                lua.AddSearchPath(rootPath + "/ToLua/Lua");
            }
            else
            {
                lua.AddSearchPath(Util.DataPath + "lua");
                //lua.AddSearchPath(Util.DataPath + "lua/?");
                //lua.AddSearchPath(AppConst.FrameworkRoot + "/ToLua/Lua");
            }
        }

        /// <summary>
        /// 初始化LuaBundle
        /// </summary>
        void InitLuaBundle()
        {
            if (loader.beZip)
            {
                loader.AddBundle("lua/lua.unity3d");
                loader.AddBundle("lua/lua_math.unity3d");
                loader.AddBundle("lua/lua_system.unity3d");
                loader.AddBundle("lua/lua_system_reflection.unity3d");
                loader.AddBundle("lua/lua_unityengine.unity3d");
                loader.AddBundle("lua/lua_common.unity3d");
                loader.AddBundle("lua/lua_logic.unity3d");
                loader.AddBundle("lua/lua_view.unity3d");
                loader.AddBundle("lua/lua_controller.unity3d");
                loader.AddBundle("lua/lua_misc.unity3d");
                loader.AddBundle("lua/lua_data.unity3d");
                loader.AddBundle("lua/lua_protobuf.unity3d");
                loader.AddBundle("lua/lua_3rd_cjson.unity3d");
                loader.AddBundle("lua/lua_3rd_luabitop.unity3d");
                loader.AddBundle("lua/lua_3rd_pbc.unity3d");
                loader.AddBundle("lua/lua_3rd_pblua.unity3d");
                loader.AddBundle("lua/lua_3rd_sproto.unity3d");
            }
        }

        public object[] DoFile(string filename)
        {
            return lua.DoFile(filename);
        }

        public void Require(string filename)
        {
            lua.Require(filename);
        }
        
        // Update is called once per frame
        public object[] CallFunction(string funcName, params object[] args)
        {
            LuaFunction func = lua.GetFunction(funcName);
            if (func != null) {
                return func.Call(args);
            }
            return null;
        }

        public void LuaGC()
        {
            lua.LuaGC(LuaGCOptions.LUA_GCCOLLECT);
        }

        public void Close()
        {

            if (loop != null)
            {
                loop.Destroy();
                loop = null;
            }
            

            lua.Dispose();
            lua = null;
            loader = null;
        }

        public LuaTable GetLuaTable(string tableName)
        {
            return lua.GetTable(tableName);
        }

        public LuaFunction GetLuaFunction(string funcname)
        {
            return lua.GetFunction(funcname);
        }
    }
}