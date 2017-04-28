//#define LOCALSERVER
using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using LuaInterface;
using System.Reflection;
using System.IO;


namespace LuaFramework
{
    public class GameManager : Manager
    {
        //是否允許更新
        private bool permitUpdate = false;

        protected static bool initialize = false;
        //存放下載完成的文件列表
        private List<string> downloadFiles = new List<string>();
        //存放需要更新下載文件的列表
        private List<KeyValuePair<string, string>> needUpdateFiles
            = new List<KeyValuePair<string, string>>();

        public bool PermitUpdate
        {
            get { return permitUpdate; }
            set { permitUpdate = value; }
        }

        /// <summary>
        /// 初始化游戏管理器
        /// </summary>
        void Awake()
        {
            Init();
        }

        /// <summary>
        /// 初始化
        /// </summary>
        void Init()
        {
            DontDestroyOnLoad(gameObject);  //防止销毁自己
            //UIManager.ShowUIForms("LoginPanel", false, false);
           // NetManager.SendConnect();
            CheckExtractResource(); //檢測是否需要释放资源
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            Application.targetFrameRate = AppConst.GameFrameRate;
        }

        /// <summary>
        /// 释放资源
        /// </summary>
        public void CheckExtractResource()
        {
            //判斷首次啓動游戲，是否需要解壓資源到資源目錄
            bool isExists = Directory.Exists(Util.DataPath) &&
              Directory.Exists(Util.DataPath + "lua/") && File.Exists(Util.DataPath + "files.txt");

            //如果是存在資源目錄或者是DebugMode，則不需要解壓文件
            if (isExists || AppConst.DebugMode)
            {
                StartCoroutine(OnUpdateResource());
                return;   //文件已经解压过了，自己可添加检查文件列表逻辑
            }

            StartCoroutine(OnExtractResource());    //启动释放协成 
        }

        IEnumerator OnExtractResource()
        {
            string dataPath = Util.DataPath;  //数据目录
            string resPath = Util.AppContentPath(); //游戏包资源目录
            Debug.Log("游戏目录：" + dataPath);

            if (Directory.Exists(dataPath)) Directory.Delete(dataPath, true);
            Directory.CreateDirectory(dataPath);

            string infile = resPath + "files.txt";
            string outfile = dataPath + "files.txt";
            if (File.Exists(outfile)) File.Delete(outfile);

            string message = "正在解包文件:>files.txt";

            //Android平臺用WWW下載資源
            if (Application.platform == RuntimePlatform.Android)
            {
                WWW www = new WWW(infile);
                yield return www;

                if (www.isDone)
                {
                    File.WriteAllBytes(outfile, www.bytes);
                }
                yield return 0;
            }
            //其他平臺直接copy資源
            else
            {
                File.Copy(infile, outfile, true);
            }
            yield return new WaitForEndOfFrame();

            //释放所有文件到数据目录
            string[] files = File.ReadAllLines(outfile);
            message = string.Format("玩命解壓資源中...");
            facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
            //foreach (var file in files)
            for(int i = 0; i < files.Length; i++)
            {
                string[] fs = files[i].Split('|');
                infile = resPath + fs[0];  //
                outfile = dataPath + fs[0];

                message = "正在解包文件:>" + fs[0];
                //Debug.Log("正在解包文件:>" + infile);
                int value = Mathf.RoundToInt(((float) i / (files.Length - 1)) * 100);
                facade.SendMessageCommand(NotiConst.UPDATE_PROGRESS, value);

                string dir = Path.GetDirectoryName(outfile);
                if (!Directory.Exists(dir)) Directory.CreateDirectory(dir);

                if (Application.platform == RuntimePlatform.Android)
                {
                    WWW www = new WWW(infile);
                    yield return www;

                    if (www.isDone)
                    {
                        File.WriteAllBytes(outfile, www.bytes);
                    }
                    yield return 0;
                }
                else
                {
                    if (File.Exists(outfile))
                    {
                        File.Delete(outfile);
                    }
                    if (File.Exists(infile))
                    {
                        File.Copy(infile, outfile, true);
                    }
                }
                yield return new WaitForEndOfFrame();
            }
            message = "解包完成!!!";
            facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
            yield return new WaitForSeconds(0.1f);

            message = string.Empty;
            //释放完成，开始启动更新资源
            StartCoroutine(OnUpdateResource());
        }

        /// <summary>
        /// 启动更新下载，这里只是个思路演示，此处可启动线程下载更新
        /// </summary>
        IEnumerator OnUpdateResource()
        {
            if (!AppConst.UpdateMode)
            {
                facade.SendMessageCommand(NotiConst.UPDATE_COMPLETE);
                OnResourceInited();
                yield break;
            }

            string dataPath = Util.DataPath;  //数据目录
            string url = AppConst.WebUrl;
            string message = string.Empty;
            string random = DateTime.Now.ToString("yyyymmddhhmmss");
            string listUrl = url + "files.txt?v=" + random;
            Debug.LogWarning("LoadUpdate---->>>" + listUrl);
            message = "正在獲取資源版本文件...";
            facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
            //下載資源對比文件
            WWW www = new WWW(listUrl); yield return www;
            if (www.error != null)
            {
                message = "獲取資源版本對比文件失敗...";
                Debug.Log(www.error.ToString());
                OnUpdateFailed(message);
                yield break;
            }
            if (!Directory.Exists(dataPath))
            {
                Directory.CreateDirectory(dataPath);
            }

            //嘗試把從資源服務器下載的file.txt文件寫入到資源目錄下的file.txt文件
            try
            {
                File.WriteAllBytes(dataPath + "files.txt", www.bytes);
            }
            catch (Exception e)
            {
                Debug.Log(e.ToString());
                throw;
            }

            string filesText = www.text;
            string[] files = filesText.Split('\n');

            message = "正在檢查更新信息...";
            facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);

            //記錄需要更新資源的縂大小
            int updateFilesSize = 0;
            needUpdateFiles.Clear();

            for (int i = 0; i < files.Length; i++)
            {
                if (string.IsNullOrEmpty(files[i])) continue;
                //把file.txt中某一行分成文件名和MD5碼兩行

                string[] keyValue = files[i].Split('|');
                string f = keyValue[0];
                //本地資源目錄的文件路徑
                string localfile = (dataPath + f).Trim();
                //獲取該文件所在的目錄路徑
                string path = Path.GetDirectoryName(localfile);

                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                string fileUrl = url + f + "?v=" + random;
                //判斷本地目錄是否存在該文件
                bool canUpdate = !File.Exists(localfile);
                //如果存在該文件，則判斷MD5碼
                if (!canUpdate)
                {
                    string remoteMd5 = keyValue[1].Trim();
                    //計算localfile的MD5碼
                    string localMd5 = Util.md5file(localfile);

                    canUpdate = !remoteMd5.Equals(localMd5);
                    if (canUpdate) File.Delete(localfile);
                }

                if (canUpdate)
                {   //本地缺少文件
//                    Debug.Log(fileUrl);
//                    message = "downloading>>" + fileUrl;
//                    facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
//#if LOCALSERVER
//                    www = new WWW(fileUrl); yield return www;
//                    if (www.error != null) 
//                    {
//                        OnUpdateFailed(path);   //
//                        yield break;
//                    }
//                    File.WriteAllBytes(localfile, www.bytes);

//#else               //这里都是资源文件，用线程下载
//                    BeginDownload(fileUrl, localfile);
//                    float DownloadTime = 0;
//                    //判斷文件是否下載完成,如果下載超時,在這處理..
//                    while (!(IsDownOK(localfile)))
//                    {
//                        yield return new WaitForEndOfFrame();
//                    }
//#endif            

                    try
                    {
                        updateFilesSize += int.Parse(keyValue[2]);
                    }
                    catch (Exception e)
                    {
                        Debug.LogError(e.ToString());
                        throw;
                    }
                      
                    needUpdateFiles.Add(new KeyValuePair<string, string>(fileUrl, localfile));
                }
            }

            if(needUpdateFiles.Count > 0)
            {
                permitUpdate = false;
                //發送消息給View層請求允許更新
                facade.SendMessageCommand(NotiConst.UPDATE_CONFIRM, updateFilesSize);

                while (!permitUpdate)
                {
                    yield return new WaitForEndOfFrame();
                }

                for (int i = 0; i < needUpdateFiles.Count; i++)
                {
                    string fileUrl = needUpdateFiles[i].Key;
                    string localfile = needUpdateFiles[i].Value;

                    if (AppConst.ThreadDownLoad)
                    {
                        message = "downloading>>" + fileUrl;
                        BeginDownload(fileUrl, localfile);
                        message = "正在下載資源>>" + localfile;
                        facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
                        while (!canDownNext(localfile))
                        {
                            //Debug.Log("下載中啊");
                            yield return new WaitForEndOfFrame();
                        }
                    }
                    else
                    {
                        message = "正在下載資源>>" + localfile.Replace(dataPath, string.Empty);
                        www = new WWW(fileUrl);
                        facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
                        while (!www.isDone)
                        {
                            facade.SendMessageCommand(NotiConst.UPDATE_PROGRESS, www.progress);
                            yield return new WaitForEndOfFrame();
                        }
                        if (www.error != null)
                        {
                            OnUpdateFailed(fileUrl);
                            yield break;
                        }
                    }

                    //facade.SendMessageCommand(NotiConst.UPDATE_COMPLETE, localfile);
                }
            }
            yield return new WaitForEndOfFrame();

            message = "更新完成!!";
            facade.SendMessageCommand(NotiConst.UPDATE_COMPLETE, message);

            OnResourceInited();
        }



        void OnUpdateFailed(string file)
        {
            string message = "更新失败!>" + file;
            Debug.Log(message);
            facade.SendMessageCommand(NotiConst.UPDATE_MESSAGE, message);
        }

        /// <summary>
        /// 是否下载完成
        /// </summary>
        bool canDownNext(string file)
        {
            //Debug.Log("downloadFiles.Count:" + downloadFiles.Count);
            return downloadFiles.Contains(file);
        }

        /// <summary>
        /// 线程下载
        /// </summary>
        void BeginDownload(string url, string file)
        {     //线程下载
            object[] param = new object[2] { url, file };
            //創建一個下載事件，添加進events列表
            ThreadEvent ev = new ThreadEvent();
            ev.Key = NotiConst.UPDATE_DOWNLOAD;
            ev.evParams.AddRange(param);
            //OnThreadCompleted事件完成后的callback函數
            ThreadManager.AddEvent(ev, OnThreadCompleted);   //线程下载
        }

        /// <summary>
        /// 线程完成
        /// </summary>
        /// <param name="data"></param>
        void OnThreadCompleted(NotiData data)
        {
            switch (data.evName)
            {
                case NotiConst.UPDATE_EXTRACT:  //解压一个完成
                //
                break;
                case NotiConst.UPDATE_DOWNLOAD: //下载一个完成
                    downloadFiles.Add(data.evParam.ToString());
                    Debug.Log("下載完成：>" + data.evParam.ToString());
                break;
            }
        }

        /// <summary>
        /// 资源初始化结束
        /// </summary>
        public void OnResourceInited()
        {
#if ASYNC_MODE
            ResManager.Initialize(AppConst.AssetDir, delegate() 
            {
                Debug.Log("Initialize OK!!!");
                this.OnInitialize();
            });
#else
            ResManager.Initialize();
            this.OnInitialize();
#endif
        }

        void OnInitialize()
        {
            LuaManager.InitStart();
            LuaManager.DoFile("Logic/Game");         //加载游戏
            LuaManager.DoFile("Logic/Network");      //加载网络
            NetManager.OnInit();                     //初始化网络
            Util.CallMethod("Game", "OnInitOK");     //初始化完成
            

            initialize = true;

            //类对象池测试
            var classObjPool = ObjPoolManager.CreatePool<TestObjectClass>(OnPoolGetElement, OnPoolPushElement);
            //方法1
            //objPool.Release(new TestObjectClass("abcd", 100, 200f));
            //var testObj1 = objPool.Get();

            //方法2
            ObjPoolManager.Release<TestObjectClass>(new TestObjectClass("abcd", 100, 200f));
            var testObj1 = ObjPoolManager.Get<TestObjectClass>();

            Debugger.Log("TestObjectClass--->>>" + testObj1.ToString());

            //游戏对象池测试
            var prefab = Resources.Load("TestGameObjectPrefab", typeof(GameObject)) as GameObject;
            var gameObjPool = ObjPoolManager.CreatePool("TestGameObject", 5, 10, prefab);

            var gameObj = Instantiate(prefab) as GameObject;
            gameObj.name = "TestGameObject_01";
            gameObj.transform.localScale = Vector3.one;
            gameObj.transform.localPosition = Vector3.zero;

            ObjPoolManager.Release("TestGameObject", gameObj);
            var backObj = ObjPoolManager.Get("TestGameObject");
            backObj.transform.SetParent(null);

            Debug.Log("TestGameObject--->>>" + backObj);
        }



        /// <summary>
        /// 当从池子里面获取时
        /// </summary>
        /// <param name="obj"></param>
        void OnPoolGetElement(TestObjectClass obj)
        {
            Debug.Log("OnPoolGetElement--->>>" + obj);
        }

        /// <summary>
        /// 当放回池子里面时
        /// </summary>
        /// <param name="obj"></param>
        void OnPoolPushElement(TestObjectClass obj)
        {
            Debug.Log("OnPoolPushElement--->>>" + obj);
        }

        /// <summary>
        /// 析构函数
        /// </summary>
        void OnDestroy()
        {
            if (NetManager != null)
            {
                NetManager.Unload();
            }
            if (LuaManager != null)
            {
                LuaManager.Close();
            }
            Debug.Log("~GameManager was destroyed");
        }
    }
}