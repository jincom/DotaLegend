using UnityEngine;
using System.Collections;


namespace LuaFramework {

    /// <summary>
    /// 程序入口
    /// </summary>
    public class Main : MonoBehaviour
    {
        void Start()
        {
            AppFacade.Instance.StartUp();   //启动游戏
        }
    }       
}