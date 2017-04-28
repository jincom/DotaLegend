#define DEBUG_MODE
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LuaFramework;

public class GameSetting : MonoBehaviour {
    [SerializeField]
    public bool UpdateMode = false;

    [SerializeField]
    public bool DebugMode = true;

    [SerializeField]
    public bool LuaBundleMode = false;

    [SerializeField]
    public bool ExampleMode = false;

    [SerializeField]
    public bool LogMode = true;                           //Log模式-用于打印调试信息

    [SerializeField]
    public bool ThreadDownLoad = true;                    //資源下載模式

    [SerializeField]
    public bool LuaByteMode = false;                       //Lua字节码模式-默认关闭 

    [SerializeField]
    public bool openZbsDebugger = false;

    [SerializeField]
    public bool openLuaSocket = true;

    [SerializeField]
    public int TimerInterval = 1;

    [SerializeField]
    public int GameFrameRate = 30;                        //游戏帧频

    [SerializeField]
    public string AppName = "LuaFramework";               //应用程序名称

    [SerializeField]
    public string LuaTempDir = "Lua/";                    //临时目录

    //[SerializeField]
    //public string AppPrefix = AppName + "_";              //应用程序前缀

    [SerializeField]
    public string ExtName = ".unity3d";                   //素材扩展名

    [SerializeField]
    public string AssetDir = "StreamingAssets";           //素材目录 

    [SerializeField]
    public string WebUrl = "http://114.55.53.136:1993/StreamingAssets/";      //测试更新地址

    [SerializeField]
    public string ConfigurationUrl = "/Configuration";                        //配置文件地址

    [SerializeField]
    public string UserId = string.Empty;                   //用户ID

    //public static int SocketPort = 0;                           //Socket服务器端口
    [SerializeField]
    public int SocketPort = 1994;                           //Socket服务器端口

    //public static string SocketAddress = string.Empty;          //Socket服务器地址
    [SerializeField]
    public string SocketAddress = "114.55.53.136";          //Socket服务器地址



    void Awake()
    {
#if DEBUG_MODE
        AppConst.AppName = this.AppName;
        AppConst.AppPrefix = this.AppName + "_";
        AppConst.AssetDir = this.AssetDir;
        AppConst.ConfigurationUrl = Application.dataPath +  this.ConfigurationUrl;
        AppConst.DebugMode = this.DebugMode;
        AppConst.ExampleMode = this.ExampleMode;
        AppConst.ExtName = this.ExtName;
        //AppConst.FrameworkRoot
        AppConst.GameFrameRate = this.GameFrameRate;
        AppConst.LogMode = this.LogMode;
        AppConst.LuaBundleMode = this.LuaBundleMode;
        AppConst.LuaByteMode = this.LuaByteMode;
        AppConst.LuaTempDir = this.LuaTempDir;
        AppConst.SocketAddress = this.SocketAddress;
        AppConst.SocketPort = this.SocketPort;
        AppConst.ThreadDownLoad = this.ThreadDownLoad;
        AppConst.TimerInterval = this.TimerInterval;
        AppConst.UpdateMode = this.UpdateMode;
        AppConst.UserId = this.UserId;
        AppConst.WebUrl = this.WebUrl;
        //LuaConst
        LuaConst.openLuaSocket = this.openLuaSocket;
        LuaConst.openZbsDebugger = this.openZbsDebugger;
#endif

    }
}
