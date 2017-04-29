//using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using LuaInterface;



namespace LuaFramework
{

    public class UIEventListener : MonoBehaviour
    {
        private Dictionary<Button, LuaFunction> __buttons_map;

        private Dictionary<Toggle, LuaFunction> __toggle_map;

        private LuaTable __self = null;

        public LuaTable self
        {
            get { return __self; }
            set { __self = value; }
        }

        /// 添加Button的OnClick监听事件
        /// </summary>
        /// <param name="go"></param>
        /// <param name="func"></param>
        public void AddButtonClick(GameObject go, LuaFunction func)
        {
            if (go == null || func == null) return;

            Button button = go.GetComponent<Button>();

            if (button == null) return;

            if (__buttons_map == null)
                __buttons_map = new Dictionary<Button, LuaFunction>();

            button.onClick.AddListener
                (
                    () => 
                    {
                        func.BeginPCall();
                        if (__self != null) func.Push(__self);
                        func.Push(go);
                        func.PCall();
                        func.EndPCall();
                    }
                );

            __buttons_map[button] = func;
        }

        /// 移除Button的OnClick监听事件
        /// </summary>
        /// <param name="go"></param>
        /// <param name="func"></param>
        public void RemoveButtonClick(GameObject go)
        {
            if (go == null || __buttons_map == null) return;

            Button button = go.GetComponent<Button>();

            if (button == null) return;

            LuaFunction func = null;
            if (__buttons_map.TryGetValue(button, out func))
            {
                func.Dispose();
                func = null;
                button.onClick.RemoveAllListeners();
            }
        }

        /// <summary>
        /// 添加Toggle的OnValueChange监听事件
        /// </summary>
        /// <param name="go"></param>
        /// <param name="func"></param>
        public void AddToggleChange(GameObject go, LuaFunction func)
        {
            if (go == null || func == null) return;

            Toggle toggle = go.GetComponent<Toggle>();

            if (toggle == null) return;

            if (__toggle_map == null)
                __toggle_map = new Dictionary<Toggle, LuaFunction>();

            toggle.onValueChanged.AddListener
                (
                    (isOn) =>
                    {
                        func.BeginPCall();
                        if (__self != null) func.Push(__self);
                        func.Push(go);
                        func.Push(isOn);
                        func.PCall();
                        func.EndPCall();
                    }
                );

            __toggle_map[toggle] = func;
        }

        /// 移除Button的OnClick监听事件
        /// </summary>
        /// <param name="go"></param>
        /// <param name="func"></param>
        public void RemoveToggleChange(GameObject go)
        {
            if (go == null || __toggle_map == null) return;

            Toggle toggle = go.GetComponent<Toggle>();

            if (toggle == null) return;

            LuaFunction func = null;
            if (__toggle_map.TryGetValue(toggle, out func))
            {
                func.Dispose();
                func = null;
                toggle.onValueChanged.RemoveAllListeners();
            }
        }

        void ClearAllListener()
        {
            if (__buttons_map != null)
            {
                foreach(var listener in __buttons_map)
                {
                    listener.Value.Dispose();
                    if (listener.Key != null)
                    {
                        listener.Key.onClick.RemoveAllListeners();
                    }
                }

                __buttons_map.Clear();
            }


            if (__toggle_map != null)
            {
                foreach (var listener in __toggle_map)
                {
                    listener.Value.Dispose();
                    if (listener.Key != null)
                    {
                        listener.Key.onValueChanged.RemoveAllListeners();
                    }
                }
                __toggle_map.Clear();
            }
         
        }

        void OnDestroy()
        {
            ClearAllListener();
        }
    }
}
