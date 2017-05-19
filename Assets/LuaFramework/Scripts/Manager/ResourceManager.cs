#if ASYNC_MODE
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.IO;
using LuaInterface;
using UObject = UnityEngine.Object;

/// <summary>
/// 存放一个AB引用，还有AB被加载的次数
/// </summary>
public class AssetBundleInfo
{
    public AssetBundle m_AssetBundle;
    public int m_ReferencedCount;

    public AssetBundleInfo(AssetBundle assetBundle)
    {
        m_AssetBundle = assetBundle;
        m_ReferencedCount = 0;
    }
}

namespace LuaFramework
{

    public class ResourceManager : Manager
    {
        string m_BaseDownloadingURL = "";                              //AB资源的根目录
        string[] m_AllManifest = null;                                 //所有的AB文件名
        AssetBundleManifest m_AssetBundleManifest = null;              //AB依赖表
        //存放所有AB的依赖列表
        Dictionary<string, string[]> m_Dependencies = new Dictionary<string, string[]>();
        //已经被加载进内存的AB
        Dictionary<string, AssetBundleInfo> m_LoadedAssetBundles = new Dictionary<string, AssetBundleInfo>();
        //AB加载请求列表
        Dictionary<string, List<LoadAssetRequest>> m_LoadRequests = new Dictionary<string, List<LoadAssetRequest>>();
        /// <summary>
        /// 一个AB加载请求，请求完成后会调用Lua回调函数和c#回调函数
        /// </summary>
        class LoadAssetRequest
        {
            public Type assetType;
            public string[] assetNames;
            public LuaFunction luaFunc;
            public Action<UObject[]> sharpFunc;
        }

        // Load AssetBundleManifest.
        public void Initialize(string manifestName, Action initOK)
        {
            m_BaseDownloadingURL = Util.GetRelativePath();
            LoadAsset<AssetBundleManifest>(manifestName, new string[] { "AssetBundleManifest" }, delegate(UObject[] objs) 
            {
                if (objs.Length > 0)
                {
                    m_AssetBundleManifest = objs[0] as AssetBundleManifest;
                    m_AllManifest = m_AssetBundleManifest.GetAllAssetBundles();
                }
                if (initOK != null) initOK();
            });
        }

        #region LoadPrefab重载

        //异步加载Prefab，加载完成后调用回调函数(lua或者c#)
        public void LoadPrefab(string abName, string assetName, Action<UObject[]> func)
        {
            LoadAsset<GameObject>(abName, new string[] { assetName }, func);
        }

        public void LoadPrefab(string abName, string[] assetNames, Action<UObject[]> func)
        {
            LoadAsset<GameObject>(abName, assetNames, func);
        }

        public void LoadPrefab(string abName, string assetNames, LuaFunction func)
        {
            LoadAsset<GameObject>(abName, new string[] { assetNames }, null, func);
        }

        public void LoadPrefab(string abName, string[] assetNames, LuaFunction func)
        {
            LoadAsset<GameObject>(abName, assetNames, null, func);
        }
        #endregion

        #region LoadSprite重载

        //异步加载Prefab，加载完成后调用回调函数(lua或者c#)
        public void LoadSprite(string abName, string assetName, Action<UObject[]> func)
        {
            LoadAsset<Sprite>(abName, new string[] { assetName }, func);
        }

        public void LoadSprite(string abName, string[] assetNames, Action<UObject[]> func)
        {
            LoadAsset<Sprite>(abName, assetNames, func);
        }

        public void LoadSprite(string abName, string assetNames, LuaFunction func)
        {
            LoadAsset<Sprite>(abName, new string[] { assetNames }, null, func);
        }

        public void LoadSprite(string abName, string[] assetNames, LuaFunction func)
        {
            LoadAsset<Sprite>(abName, assetNames, null, func);
        }
        #endregion


        /// <summary>
        /// 异步载入素材
        /// </summary>
        void LoadAsset<T>(string abName, string[] assetNames, Action<UObject[]> action = null, LuaFunction func = null) where T : UObject
        {
            abName = GetRealAssetPath(abName);
            //创建一个对应的AB加载请求
            LoadAssetRequest request = new LoadAssetRequest();
            request.assetType = typeof(T);
            request.assetNames = assetNames;
            request.luaFunc = func;
            request.sharpFunc = action;


            List<LoadAssetRequest> requests = null;
            //判断该AB是否正在被加载中
            if (!m_LoadRequests.TryGetValue(abName, out requests))
            {
                //如果该AB没有正在被加载，就开始异步加载AB
                requests = new List<LoadAssetRequest>();
                //创建一个该AB的请求List
                requests.Add(request);
                m_LoadRequests.Add(abName, requests);
                StartCoroutine(OnLoadAsset<T>(abName));
            }
            else
            {
                //如果该AB被加载中，不需要重复加载，把请求信息加进对应的List，AB加载完成后统一处理
                requests.Add(request);
            }
        }

        IEnumerator OnLoadAsset<T>(string abName) where T : UObject
        {
            //尝试从缓存表获取AB
            AssetBundleInfo bundleInfo = GetLoadedAssetBundle(abName);
            if (bundleInfo == null)
            {
                //如果缓存表没有，则开始协程加载AB，加载完成后AB会放进缓存表
                yield return StartCoroutine(OnLoadAssetBundle(abName, typeof(T)));
                //再次尝试从缓存表获取AB
                bundleInfo = GetLoadedAssetBundle(abName);
                if (bundleInfo == null)
                {
                    //AB加载失败，把对应的请求List移除
                    m_LoadRequests.Remove(abName);
                    Debug.LogError("OnLoadAsset Failed--->>>" + abName);
                    yield break;
                }
            }

            //进行到这里说明AB已经被加载成功
            List<LoadAssetRequest> list = null;
            //如果该AB的请求List是空的，则不做任何事情
            if (!m_LoadRequests.TryGetValue(abName, out list))
            {
                m_LoadRequests.Remove(abName);
                yield break;
            }
            //依次处理该AB的所有请求
            for (int i = 0; i < list.Count; i++)
            {
                AssetBundle ab = bundleInfo.m_AssetBundle;

                string[] assetNames = list[i].assetNames;
                List<UObject> result = new List<UObject>();

                //ab.AllAssetNames;
                if (assetNames.Length == 1 && assetNames[0].Equals("*"))
                {
                    assetNames = ab.GetAllAssetNames();
                    //for (int z = 0; z < assetNames.Length; z++)
                    //{
                    //    Debug.LogFormat("AssetName: {0}", assetNames[z]);
                    //}
                }
               
                //
                for (int j = 0; j < assetNames.Length; j++)
                {
                    string assetPath = assetNames[j];
                    //异步加载AB里面的Asset
                    AssetBundleRequest request = ab.LoadAssetAsync(assetPath, list[i].assetType);
                    //阻塞，直到异步加载完成
                    yield return request;
                    //把加载好的Asset放进result列表，作为返回参数
                    result.Add(request.asset);

                    //T assetObj = ab.LoadAsset<T>(assetPath);
                    //result.Add(assetObj);
                }
                //调用C#回调函数
                if (list[i].sharpFunc != null)
                {
                    list[i].sharpFunc(result.ToArray());
                    list[i].sharpFunc = null;
                }
                //调用Lua回调函数
                if (list[i].luaFunc != null)
                {
                    list[i].luaFunc.Call((object)result.ToArray());
                    list[i].luaFunc.Dispose();
                    list[i].luaFunc = null;
                }
                //增加该AB的引用计数
                bundleInfo.m_ReferencedCount++;
            }
            //所有请求处理完毕，移除
            m_LoadRequests.Remove(abName);
        }


        IEnumerator OnLoadAssetBundle(string abName, Type type)
        {
            string url = m_BaseDownloadingURL + abName;

            WWW download = null;
            //StreamAssets依赖管理文件不需要处理依赖关系
            if (type == typeof(AssetBundleManifest))
            {
                download = new WWW(url);
            }               
            else
            {
                //要处理该AB的依赖关系,如果该AB所依赖的AB还没有没有被下载,就先逐一下载依赖AB
                string[] dependencies = m_AssetBundleManifest.GetAllDependencies(abName);
                if (dependencies.Length > 0)
                {
                    m_Dependencies.Add(abName, dependencies);
                    for (int i = 0; i < dependencies.Length; i++)
                    {
                        string depName = dependencies[i];
                        AssetBundleInfo bundleInfo = null;
                        //判断依赖AB是否被加载过了,如果是,则从缓存表取得,并把依赖AB引用++
                        if (m_LoadedAssetBundles.TryGetValue(depName, out bundleInfo))
                        {
                            bundleInfo.m_ReferencedCount++;
                        }
                        //判断依赖AB是否正在被加载中,没有的话就加载依赖AB(递归)(这里有个问题,该依赖如果正在被加载,就会跳过该依赖的下载.万一其他依赖都已经下载好了,这个原本正在加载中的依赖还没被下载好,怎么办?)
                        else if (!m_LoadRequests.ContainsKey(depName))
                        {

                            yield return StartCoroutine(OnLoadAssetBundle(depName, type));
                        }
                    }
                }
                //运行到这里说明该AB所依赖的AB都已经被加载过了,就可以开始下载该AB了
                download = WWW.LoadFromCacheOrDownload(url, m_AssetBundleManifest.GetAssetBundleHash(abName), 0);
            }
            yield return download;

            AssetBundle assetObj = download.assetBundle;
            if (assetObj != null)
            {
                m_LoadedAssetBundles.Add(abName, new AssetBundleInfo(assetObj));
            }
        }

        /// <summary>
        /// 尝试从AB缓存表获取AB
        /// </summary>
        /// <param name="abName"></param>
        /// <returns></returns>
        AssetBundleInfo GetLoadedAssetBundle(string abName)
        {
            AssetBundleInfo bundle = null;
            //如果缓存表没有,直接返回null
            m_LoadedAssetBundles.TryGetValue(abName, out bundle);
            if (bundle == null) return null;

            // No dependencies are recorded, only the bundle itself is required.
            //如果该AB没有依赖AB,就可以直接返回AB
            string[] dependencies = null;
            if (!m_Dependencies.TryGetValue(abName, out dependencies))
                return bundle;

            // Make sure all dependencies are loaded
            //否则要确认该AB的所有依赖都被下载了,不然返回null
            foreach (var dependency in dependencies)
            {
                AssetBundleInfo dependentBundle;
                m_LoadedAssetBundles.TryGetValue(dependency, out dependentBundle);
                if (dependentBundle == null) return null;
            }
            return bundle;
        }

        /// <summary>
        /// 返回AB的相对路径
        /// </summary>
        /// <param name="abName"></param>
        /// <returns></returns>
        string GetRealAssetPath(string abName)
        {
            //如果是加载依赖文件（StreamingAssets），直接返回
            if (abName.Equals(AppConst.AssetDir))
            {
                return abName;
            }

            //AB打包时做了小写路径处理
            abName = abName.ToLower();
            if (!abName.EndsWith(AppConst.ExtName))
            {
                //如果没有后缀，加上.untiy3d
                abName += AppConst.ExtName;
            }
            //如果AB名是 XX/YY/ZZ 形式，则返回，这是只是做了简单的处理，没有考虑复杂的情况
            if (abName.Contains("/"))
            {
                return abName;
            }
            //string[] paths = m_AssetBundleManifest.GetAllAssetBundles();  产生GC，需要缓存结果
            //如果AB是 ZZ形式，则要到AB名列表获取AB全名（XX/YY/ZZ）
            for (int i = 0; i < m_AllManifest.Length; i++)
            {
                int index = m_AllManifest[i].LastIndexOf('/');
                string path = m_AllManifest[i].Remove(0, index + 1);    //字符串操作函数都会产生GC
                if (!path.EndsWith(AppConst.ExtName))
                {
                    path += AppConst.ExtName;
                }
                if (path.Equals(abName))
                {
                    return m_AllManifest[i];
                }
            }
            //如果在AB列表找不到该AB名，报错
            Debug.LogError("GetRealAssetPath Error:>>" + abName);
            return null;
        }


        /// <summary>
        /// 此函数交给外部卸载专用，自己调整是否需要彻底清除AB
        /// </summary>
        /// <param name="abName"></param>
        /// <param name="isThorough"></param>
        public void UnloadAssetBundle(string abName, bool isThorough = false)
        {
            abName = GetRealAssetPath(abName);
            Debug.Log(m_LoadedAssetBundles.Count + " assetbundle(s) in memory before unloading " + abName);
            UnloadAssetBundleInternal(abName, isThorough);
            UnloadDependencies(abName, isThorough);
            Debug.Log(m_LoadedAssetBundles.Count + " assetbundle(s) in memory after unloading " + abName);

        }

        void UnloadDependencies(string abName, bool isThorough)
        {
            string[] dependencies = null;
            if (!m_Dependencies.TryGetValue(abName, out dependencies))
                return;

            // Loop dependencies.
            foreach (var dependency in dependencies)
            {
                UnloadAssetBundleInternal(dependency, isThorough);
            }
            m_Dependencies.Remove(abName);
        }

        void UnloadAssetBundleInternal(string abName, bool isThorough)
        {
            AssetBundleInfo bundle = GetLoadedAssetBundle(abName);
            if (bundle == null) return;

            if (--bundle.m_ReferencedCount <= 0)
            {
                if (m_LoadRequests.ContainsKey(abName))
                {
                    return;     //如果当前AB处于Async Loading过程中，卸载会崩溃，只减去引用计数即可
                }
                bundle.m_AssetBundle.Unload(isThorough);
                m_LoadedAssetBundles.Remove(abName);
                Debug.Log(abName + " has been unloaded successfully");
            }
        }
    }
}
#else

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using LuaFramework;
using LuaInterface;
using UObject = UnityEngine.Object;

namespace LuaFramework {
    public class ResourceManager : Manager {
        private string[] m_Variants = { };
        private AssetBundleManifest manifest;
        private AssetBundle shared, assetbundle;
        private Dictionary<string, AssetBundle> bundles;

        void Awake() {
        }

        /// <summary>
        /// 初始化
        /// </summary>
        public void Initialize() {
            byte[] stream = null;
            string uri = string.Empty;
            bundles = new Dictionary<string, AssetBundle>();
            uri = Util.DataPath + AppConst.AssetDir;
            if (!File.Exists(uri)) return;
            stream = File.ReadAllBytes(uri);
            assetbundle = AssetBundle.CreateFromMemoryImmediate(stream);
            manifest = assetbundle.LoadAsset<AssetBundleManifest>("AssetBundleManifest");
        }

        /// <summary>
        /// 载入素材
        /// </summary>
        public T LoadAsset<T>(string abname, string assetname) where T : UnityEngine.Object {
            abname = abname.ToLower();
            AssetBundle bundle = LoadAssetBundle(abname);
            return bundle.LoadAsset<T>(assetname);
        }

        public void LoadPrefab(string abName, string[] assetNames, LuaFunction func) {
            abName = abName.ToLower();
            List<UObject> result = new List<UObject>();
            for (int i = 0; i < assetNames.Length; i++) {
                UObject go = LoadAsset<UObject>(abName, assetNames[i]);
                if (go != null) result.Add(go);
            }
            if (func != null) func.Call((object)result.ToArray());
        }

        /// <summary>
        /// 载入AssetBundle
        /// </summary>
        /// <param name="abname"></param>
        /// <returns></returns>
        public AssetBundle LoadAssetBundle(string abname) {
            if (!abname.EndsWith(AppConst.ExtName)) {
                abname += AppConst.ExtName;
            }
            AssetBundle bundle = null;
            if (!bundles.ContainsKey(abname)) {
                byte[] stream = null;
                string uri = Util.DataPath + abname;
                Debug.LogWarning("LoadFile::>> " + uri);
                LoadDependencies(abname);

                stream = File.ReadAllBytes(uri);
                bundle = AssetBundle.CreateFromMemoryImmediate(stream); //关联数据的素材绑定
                bundles.Add(abname, bundle);
            } else {
                bundles.TryGetValue(abname, out bundle);
            }
            return bundle;
        }

        /// <summary>
        /// 载入依赖
        /// </summary>
        /// <param name="name"></param>
        void LoadDependencies(string name) {
            if (manifest == null) {
                Debug.LogError("Please initialize AssetBundleManifest by calling AssetBundleManager.Initialize()");
                return;
            }
            // Get dependecies from the AssetBundleManifest object..
            string[] dependencies = manifest.GetAllDependencies(name);
            if (dependencies.Length == 0) return;

            for (int i = 0; i < dependencies.Length; i++)
                dependencies[i] = RemapVariantName(dependencies[i]);

            // Record and load all dependencies.
            for (int i = 0; i < dependencies.Length; i++) {
                LoadAssetBundle(dependencies[i]);
            }
        }

        // Remaps the asset bundle name to the best fitting asset bundle variant.
        string RemapVariantName(string assetBundleName) {
            string[] bundlesWithVariant = manifest.GetAllAssetBundlesWithVariant();

            // If the asset bundle doesn't have variant, simply return.
            if (System.Array.IndexOf(bundlesWithVariant, assetBundleName) < 0)
                return assetBundleName;

            string[] split = assetBundleName.Split('.');

            int bestFit = int.MaxValue;
            int bestFitIndex = -1;
            // Loop all the assetBundles with variant to find the best fit variant assetBundle.
            for (int i = 0; i < bundlesWithVariant.Length; i++) {
                string[] curSplit = bundlesWithVariant[i].Split('.');
                if (curSplit[0] != split[0])
                    continue;

                int found = System.Array.IndexOf(m_Variants, curSplit[1]);
                if (found != -1 && found < bestFit) {
                    bestFit = found;
                    bestFitIndex = i;
                }
            }
            if (bestFitIndex != -1)
                return bundlesWithVariant[bestFitIndex];
            else
                return assetBundleName;
        }

        /// <summary>
        /// 销毁资源
        /// </summary>
        void OnDestroy() {
            if (shared != null) shared.Unload(true);
            if (manifest != null) manifest = null;
            Debug.Log("~ResourceManager was destroy!");
        }
    }
}
#endif
