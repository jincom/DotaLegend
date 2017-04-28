#define DEBUG_MODE
using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

namespace LuaFramework
{
    public class AppConst
    {
#if !DEBUG_MODE
        public static bool LogMode = true;                           //Log模式-用于打印调试信息
        public static bool ThreadDownLoad = true;                    //資源下載模式

        public const bool DebugMode = false;                         //调试模式-用于内部测试
        /// <summary>
        /// 如果想删掉框架自带的例子，那这个例子模式必须要
        /// 关闭，否则会出现一些错误。
        /// </summary>
        public const bool ExampleMode = false;                        //例子模式 



        /// <summary>
        /// 如果开启更新模式，前提必须启动框架自带服务器端。
        /// 否则就需要自己将StreamingAssets里面的所有内容
        /// 复制到自己的Webserver上面，并修改下面的WebUrl。
        /// </summary>
        public const bool UpdateMode = false;                       //更新模式-默认关闭 
        public const bool LuaByteMode = false;                       //Lua字节码模式-默认关闭 
        public const bool LuaBundleMode = false;                    //Lua代码AssetBundle模式

        public const int TimerInterval = 1;
        public const int GameFrameRate = 30;                        //游戏帧频

        public const string AppName = "LuaFramework";               //应用程序名称
        public const string LuaTempDir = "Lua/";                    //临时目录
        public const string AppPrefix = AppName + "_";              //应用程序前缀
        public const string ExtName = ".unity3d";                   //素材扩展名
        public const string AssetDir = "StreamingAssets";           //素材目录 
        public const string WebUrl = "http://114.55.53.136:1993/StreamingAssets/";      //测试更新地址
#else
        public static bool LogMode = false;                           //Log模式-用于打印调试信息
        public static bool ThreadDownLoad = true;                    //資源下載模式

        public static bool DebugMode = true;                         //调试模式-用于内部测试

        /// <summary>
        /// 如果想删掉框架自带的例子，那这个例子模式必须要
        /// 关闭，否则会出现一些错误。
        /// </summary>
        public static bool ExampleMode = false;                        //例子模式 

        /// <summary>
        /// 如果开启更新模式，前提必须启动框架自带服务器端。
        /// 否则就需要自己将StreamingAssets里面的所有内容
        /// 复制到自己的Webserver上面，并修改下面的WebUrl。
        /// </summary>
        public static bool UpdateMode = false;                       //更新模式-默认关闭 
        public static bool LuaByteMode = false;                       //Lua字节码模式-默认关闭 
        public static bool LuaBundleMode = false;                    //Lua代码AssetBundle模式

        public static int TimerInterval = 1;
        public static int GameFrameRate = 30;                        //游戏帧频

        public static string AppName = "LuaFramework";               //应用程序名称
        public static string LuaTempDir = "Lua/";                    //临时目录
        public static string AppPrefix = AppName + "_";              //应用程序前缀
        public static string ExtName = ".unity3d";                   //素材扩展名
        public static string AssetDir = "StreamingAssets";           //素材目录 
        public static string WebUrl = "http://114.55.53.136:1993/StreamingAssets/";      //测试更新地址
#endif

        public static string ConfigurationUrl = Application.persistentDataPath + "/Configuration";         //配置文件地址

        public static string UserId = string.Empty;                   //用户ID
        //public static int SocketPort = 0;                           //Socket服务器端口
        public static int SocketPort = 1994;                           //Socket服务器端口
        //public static string SocketAddress = string.Empty;          //Socket服务器地址
        public static string SocketAddress = "114.55.53.136";          //Socket服务器地址

        public static string FrameworkRoot
        {
            get
            {
                return Application.dataPath + "/" + AppName;
            }
        }
    }
}