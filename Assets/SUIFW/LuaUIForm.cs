/***
 * 
 *    Title: "SUIFW" UI框架项目
 *           主题: UI窗体的父类
 *    Description: 
 *           功能：定义所有UI窗体的父类。
 *           定义四个生命周期
 *           
 *           1：Display 显示状态。
 *           2：Hiding 隐藏状态
 *           3：ReDisplay 再显示状态。
 *           4：Freeze 冻结状态。
 *           
 *                  
 *    Date: 2017
 *    Version: 0.1版本
 *    Modify Recoder: 
 *    
 *   
 */
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Text;
using LuaFramework;
using LuaInterface;
using UnityEngine;
using UnityEngine.UI;

namespace SUIFW
{
	public class LuaUIForm : BaseUIForm {

        private StringBuilder sb;
	    private Dictionary<string, LuaFunction> _eventMap;

        //Lua变量
	    private LuaTable _luaPanel = null;
	    private LuaFunction _luaFunc = null;

        protected LuaUIForm()
        {
            
        }

	    protected virtual void Awake()
	    {
            sb = new StringBuilder();
            InitLuaVar();
            CallLuaMethod("OnInitialize", _luaPanel);
            CallLuaMethod("Awake", _luaPanel);
	    }

        //初始化Lua变量
	    protected void InitLuaVar()
	    {
            LuaManager.DoFile("View/" + name);

	        _luaFunc = LuaManager.GetLuaFunction(name + ".new");

	        if (_luaFunc == null)
	        {
                Debugger.LogError("找不到模块：" + name + ".new方法");
	            return;
	        }

            _luaFunc.BeginPCall();
            _luaFunc.Push(gameObject);
            _luaFunc.PCall();
	        _luaPanel = _luaFunc.CheckLuaTable();
            _luaFunc.EndPCall();
            _luaFunc.Dispose();
            _luaFunc = null;

	    }

        #region  窗体的五种(生命周期)状态
        /// <summary>
        /// 首次加载初始化状态
        /// </summary>
        public override void OnInitialize()
        {

             //Util.CallMethod(name, "OnInitialize", _luaPanel);
            CallLuaMethod("OnInitialize", _luaPanel);
            //if (_luaObject != null)
            //{
            //    _luaObject.GetLuaFunction("OnInitialize").Call();
            //}
        }

        /// <summary>
        /// 显示状态
        /// </summary>
	    public override void Display()
	    {
            //this.gameObject.SetActive(true);
            //   //设置模态窗体调用(必须是弹出窗体)
            //   if (_CurrentUIType.UIForms_Type==UIFormType.PopUp)
            //   {
            //       //UIMaskMgr.GetInstance().SetMaskWindow(this.gameObject,_CurrentUIType.UIForm_LucencyType);
            //   }
            //Util.CallMethod(name, "Display", _luaPanel);
            CallLuaMethod("Display", _luaPanel);
            //if (_luaObject != null)
            //{
            //    _luaObject.GetLuaFunction("Display").Call();
            //}
        }

        /// <summary>
        /// 隐藏状态
        /// </summary>
	    public override void Hiding()
	    {
            //this.gameObject.SetActive(false);
            ////取消模态窗体调用
            //if (_CurrentUIType.UIForms_Type == UIFormType.PopUp)
            //{
            //   // UIMaskMgr.GetInstance().CancelMaskWindow();
            //}
            //Util.CallMethod(name, "Hiding", _luaPanel);
            //if (_luaObject != null)
            //{
            //    _luaObject.GetLuaFunction("Hiding").Call();
            //}
            CallLuaMethod("Hiding", _luaPanel);
        }

        /// <summary>
        /// 重新显示状态
        /// </summary>
	    public override void Redisplay()
	    {
            //this.gameObject.SetActive(true);
            ////设置模态窗体调用(必须是弹出窗体)
            //if (_CurrentUIType.UIForms_Type == UIFormType.PopUp)
            //{
            //   // UIMaskMgr.GetInstance().SetMaskWindow(this.gameObject, _CurrentUIType.UIForm_LucencyType);
            //}
            //Util.CallMethod(name, "Redisplay", _luaPanel);
            CallLuaMethod("Redisplay", _luaPanel);
            //if (_luaObject != null)
            //{
            //    _luaObject.GetLuaFunction("Redisplay").Call();
            //}
        }

        /// <summary>
        /// 冻结状态
        /// </summary>
	    public override void Freeze()
	    {
            //this.gameObject.SetActive(true);
            //Util.CallMethod(name, "Freeze", _luaPanel);
            //if (_luaObject != null)
            //{
            //    _luaObject.GetLuaFunction("Freeze").Call();
            //}
            CallLuaMethod("Freeze", _luaPanel);
        }


        #endregion

        //调用Lua方法
	    public void CallLuaMethod(string funcname, params object[] objects)
	    {
	        if (_luaPanel == null) return;

	        _luaFunc = _luaPanel.GetLuaFunction(funcname);

	        if (_luaFunc == null) return;

            //开始调用luafunction
	        _luaFunc.BeginPCall();
	        if (objects.Length > 0)
	        {
	            for (int i = 0; i < objects.Length; i++)
	            {
                    _luaFunc.Push(objects[i]);
                }
	        }
            _luaFunc.PCall();
            _luaFunc.EndPCall();
            //回收掉
            _luaFunc.Dispose();
	        _luaFunc = null;
	    }


	    public override void OnMessage(IMessage message)
	    {

            // Util.CallMethod(name, "OnMessage", _luaPanel, message);
            //if (_luaObject != null)
            //{
            //    _luaObject.GetLuaFunction("OnMessage").Call(new object[] {message});
            //}
            CallLuaMethod("OnMessage", _luaPanel, message);
        }

	    #region 封装点击事件

        //注册点击事件
	    public void AddClickListener(GameObject go, LuaFunction func)
	    {
	        if (_eventMap == null)
	        {
                _eventMap = new Dictionary<string, LuaFunction>();
	        }

	        Button button = go.GetComponent<Button>();

	        if (button == null)
	        {
                Debugger.LogError("试图在没有Button组件的游戏物体获取Button组件");
                return;
	        }

	        if (func == null)
	        {
                Debugger.LogError("监听事件LuaFunction为null");
                return;
            }

	        _eventMap[button.name] = func;

            button.onClick.AddListener
            (
                () =>
                {
                    func.BeginPCall();
                    func.Push(_luaPanel);
                    func.Push(go);
                    func.PCall();
                    func.EndPCall();
                }
            );
	    }

        //移除点击时间
	    public void RemoveClickListener(GameObject go)
	    {
	        if (go == null) return;

	        LuaFunction luaFunc = null;

	        if (_eventMap.TryGetValue(go.name, out luaFunc))
	        {
                luaFunc.Dispose();
	            luaFunc = null;

	            _eventMap.Remove(go.name);

	            Button button = go.GetComponent<Button>();
	            if (button != null)
	            {
                    button.onClick.RemoveAllListeners();
	            }
	        }
	    }

	    private void ClearEventMap()
	    {
            if(_eventMap == null)
                return;

	        foreach (var key in _eventMap.Keys)
	        {
	            if (_eventMap[key] != null)
	            {
                    _eventMap[key].Dispose();
	            }
	        }
            _eventMap.Clear();
	    }

	    protected virtual void ClearLuaVar()
	    {
	        if (_luaPanel != null)
	        {
	            _luaPanel.Dispose();
	            _luaPanel = null;
	        }

	        if (_luaFunc != null)
	        {
                _luaFunc.Dispose();
                _luaFunc = null;
	        }

	        ClearEventMap();
        }

	    #endregion

        //-----------------------------------------------------------------
        protected void OnDestroy()
        {          
            ClearLuaVar();
#if ASYNC_MODE
            string abName = name.ToLower();//.Replace("panel", "");
            ResManager.UnloadAssetBundle(abName + AppConst.ExtName);
#endif
            Util.ClearMemory();
            Debug.Log("~" + name + " was destroy!");
        }
    }
}