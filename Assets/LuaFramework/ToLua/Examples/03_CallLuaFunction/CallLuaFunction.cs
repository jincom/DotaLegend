#define TEST_GC
using UnityEngine;
using System.Collections;
using LuaInterface;
using System;

public class CallLuaFunction : MonoBehaviour 
{
    private string script = 
        @"  function luaFunc()
                local num = 1234                        
                return num + 1
            end

            test = {}
            test.luaFunc = luaFunc
        ";

    LuaFunction func = null;
    LuaState lua = null;
    string tips = null;
	
	void Start () 
    {
#if !TEST_GC
    #if UNITY_5
        Application.logMessageReceived += ShowTips;
    #else
        Application.RegisterLogCallback(ShowTips);
    #endif
#endif
        lua = new LuaState();
        lua.Start();
        lua.DoString(script);

        //Get the function object
        func = lua.GetFunction("test.luaFunc");

        if (func != null)
        {
            //有gc alloc
            func.Call();
            
            //Debugger.Log("generic call return: {0}", r[0]);

            // no gc alloc
            int num = CallFunc();
            Debugger.Log("expansion call return: {0}", num);
        }
                
        lua.CheckTop();
	}

    void ShowTips(string msg, string stackTrace, LogType type)
    {
        tips += msg;
        tips += "\r\n";
    }

#if !TEST_GC
    void OnGUI()
    {
        GUI.Label(new Rect(Screen.width / 2 - 200, Screen.height / 2 - 150, 400, 300), tips);
    }
#endif

    void OnDestroy()
    {
        if (func != null)
        {
            func.Dispose();
            func = null;
        }

        lua.Dispose();
        lua = null;

#if !TEST_GC
    #if UNITY_5
        Application.logMessageReceived -= ShowTips;
    #else
        Application.RegisterLogCallback(null);
    #endif
#endif
    }

    int CallFunc()
    {        
        func.BeginPCall();                
        func.Push();
        func.PCall();        
        //int num = (int)func.CheckNumber();
      //  double num3 = func.CheckNumber();
       // Debug.Log("Num2:" + num2);    
        func.EndPCall();
        return 1;                
    }

    //在profiler中查看gc alloc
#if TEST_GC
    void Update () 
    {
        func.Call();
        //CallFunc();        
	}
#endif
}
