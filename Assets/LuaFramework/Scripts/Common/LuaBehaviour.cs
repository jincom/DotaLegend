using UnityEngine;
using LuaInterface;
using System;

namespace LuaFramework
{
    public class LuaBehaviour : MonoBehaviour
    {
        [SerializeField]
        private string m_luaModuleName;

        private LuaTable m_peer;
        private LuaTable m_luaComponent;
        private LuaFunction m_lua_update;
        private LuaFunction m_lua_onenable;
        private LuaFunction m_lua_ondisable;

        private static LuaFunction SET_PEER;
        private static LuaTable UPDATE_BEAT;
        private static LuaFunction UPDATEBEAT_ADD;
        private static LuaFunction UPDATEBEAT_REMOVE;
        private static LuaTable TOLUA;
        private volatile static LuaTable LUA_COMPONENT;
        private static LuaManager LUA_MANAGER;
        private static readonly object lock_object = new object();

        private static LuaState M_MAIN_STATE;

        public static LuaState MAIN_STATE
        {
            get { return M_MAIN_STATE; }
        }

        public LuaTable peer
        {
            get { return m_peer; }
        }

        public LuaTable LuaComponent
        {
            get { return m_luaComponent; }
        }

        static LuaBehaviour()
        {
            //if (M_MAIN_STATE == null)
            //{
            //    M_MAIN_STATE = LuaClient.GetMainState();
            //}
            LUA_MANAGER = AppFacade.Instance.GetManager<LuaManager>(ManagerName.Lua);

            M_MAIN_STATE = LUA_MANAGER.MainState;

            M_MAIN_STATE.LuaGetGlobal("tolua");

            TOLUA = M_MAIN_STATE.CheckLuaTable(-1);
            M_MAIN_STATE.LuaPop(1);

            SET_PEER = TOLUA.GetLuaFunction("setpeer");

            M_MAIN_STATE.LuaGetGlobal("UpdateBeat");
            UPDATE_BEAT = M_MAIN_STATE.CheckLuaTable(-1);
            M_MAIN_STATE.LuaPop(1);
            UPDATEBEAT_ADD = UPDATE_BEAT.GetLuaFunction("Add");
            UPDATEBEAT_REMOVE = UPDATE_BEAT.GetLuaFunction("Remove");

            LUA_COMPONENT = null;
        }


        public static LuaBehaviour Add(GameObject go, LuaTable luaComponent)
        {
            if (luaComponent == null)
            {
                Debug.LogError("can not add a nil luaComponent");
                return null;
            }
            lock (lock_object)
            {
                LUA_COMPONENT = luaComponent;
                LuaBehaviour luaBehaviour = go.AddComponent<LuaBehaviour>();
                LUA_COMPONENT = null;
                return luaBehaviour;
            }
        }

        public static LuaBehaviour Get(GameObject go, LuaTable luaComponent)
        {
            LuaBehaviour[] components = go.GetComponents<LuaBehaviour>();
            for (int i = 0; i < components.Length; i++)
            {
                if (components[i].LuaComponent == luaComponent)
                {
                    return components[i];
                }
            }
            return null;
        }

        protected virtual void Awake()
        {
            m_luaComponent = LUA_COMPONENT;
            LuaFunction newfunc = m_luaComponent.GetLuaFunction("New");
            if (newfunc == null)
            {
                Debug.LogError("luaComponent not found new function");
                return;
            }
            newfunc.BeginPCall();
            newfunc.Push(this);
            newfunc.PCall();
            m_peer = newfunc.CheckLuaTable();
            newfunc.EndPCall();


            //SET_PEER.BeginPCall();
            //SET_PEER.Push(this);
            //SET_PEER.Push(m_peer);
            //SET_PEER.PCall();
            //SET_PEER.EndPCall();

            m_lua_update = m_peer.GetLuaFunction("Update");
            m_lua_onenable = m_peer.GetLuaFunction("OnEnable");
            m_lua_ondisable = m_peer.GetLuaFunction("OnDisable");

            CallLuaMethod("Awake", gameObject);


        }

        // Use this for initialization
        protected virtual void Start()
        {
            CallLuaMethod("Start");
        }

        protected virtual void OnEnable()
        {
            CallLuaMethod(m_lua_onenable, m_peer);

            if (m_lua_update != null)
            {
                UPDATEBEAT_ADD.BeginPCall();
                UPDATEBEAT_ADD.Push(UPDATE_BEAT);
                UPDATEBEAT_ADD.Push(m_lua_update);
                UPDATEBEAT_ADD.Push(m_peer);
                UPDATEBEAT_ADD.PCall();
                UPDATEBEAT_ADD.EndPCall();
            }

        }

        protected virtual void OnDisable()
        {
            CallLuaMethod(m_lua_ondisable, m_peer);

            if (m_lua_update != null)
            {
                UPDATEBEAT_REMOVE.BeginPCall();
                UPDATEBEAT_REMOVE.Push(UPDATE_BEAT);
                UPDATEBEAT_REMOVE.Push(m_lua_update);
                UPDATEBEAT_REMOVE.Push(m_peer);
                UPDATEBEAT_REMOVE.PCall();
                UPDATEBEAT_REMOVE.EndPCall();
            }
        }

        protected virtual void OnDestroy()
        {
            CallLuaMethod("OnDestroy");
        }


        protected void CallLuaMethod(LuaFunction lua_func, params object[] objs)
        {
            if (lua_func == null)
                return;

            lua_func.BeginPCall();
            lua_func.Push(m_peer);
            foreach (var obj in objs)
                lua_func.Push(obj);
            lua_func.PCall();
            lua_func.EndPCall();

        }

        protected void CallLuaMethod(string methodName, params object[] objs)
        {
            if (m_peer == null) return;
            LuaFunction lua_func = m_peer.GetLuaFunction(methodName);
            if (lua_func == null)
                return;

            lua_func.BeginPCall();
            lua_func.Push(m_peer);
            foreach (var obj in objs)
                lua_func.Push(obj);
            lua_func.PCall();
            lua_func.EndPCall();

            lua_func.Dispose();
            lua_func = null;
        }
    }
}