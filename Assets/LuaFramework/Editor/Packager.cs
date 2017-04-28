using UnityEditor;
using UnityEngine;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using LuaFramework;
using System;

public class Packager
{
    public static string platform = string.Empty;
    static List<string> paths = new List<string>();
    static List<string> files = new List<string>();

    static List<AssetBundleBuild> maps = new List<AssetBundleBuild>();

    ///-----------------------------------------------------------
    static string[] copyExts = { ".txt", ".xml", ".lua", ".assetbundle", ".json" };

    private static string[] buildExts = {".meta", ".cs", ".dll"};

    static bool CanCopy(string ext)
    {   //能不能复制
        foreach (string e in copyExts)
        {
            if (ext.Equals(e)) return true;
        }
        return false;
    }

    static bool CanBuild(string file)
    {
        foreach (string ext in buildExts)
        {
            if (file.EndsWith(ext))
                return false;
        }
        return true;
    }

    /// <summary>
    /// 载入素材
    /// </summary>
    static UnityEngine.Object LoadAsset(string file)
    {
        if (file.EndsWith(".lua")) file += ".txt";
        return AssetDatabase.LoadMainAssetAtPath("Assets/LuaFramework/Examples/Builds/" + file);
    }

    /// <summary>
    /// 打包IOS資源
    /// </summary>
    [MenuItem("LuaFramework/Build iPhone Resource", false, 100)]
    public static void BuildiPhoneResource()
    {
        BuildTarget target;
#if UNITY_5
        target = BuildTarget.iOS;
#else
        target = BuildTarget.iPhone;
#endif
        BuildAssetResource(target);
    }

    /// <summary>
    /// 打包Android資源
    /// </summary>
    [MenuItem("LuaFramework/Build Android Resource", false, 101)]
    public static void BuildAndroidResource()
    {
        BuildAssetResource(BuildTarget.Android);
    }

    /// <summary>
    /// 打包Win資源
    /// </summary>
    [MenuItem("LuaFramework/Build Windows Resource", false, 102)]
    public static void BuildWindowsResource()
    {
        BuildAssetResource(BuildTarget.StandaloneWindows);
    }

    /// <summary>
    /// 生成绑定素材
    /// </summary>
    public static void BuildAssetResource(BuildTarget target)
    {
        if (Directory.Exists(Util.DataPath))
        {
            Directory.Delete(Util.DataPath, true);
        }

        //獲得StreamingAssets目錄路徑
        string streamPath = Application.streamingAssetsPath;
        if (Directory.Exists(streamPath))
        {
            Directory.Delete(streamPath, true);
        }
        Directory.CreateDirectory(streamPath);
        AssetDatabase.Refresh();

        maps.Clear();
        if (AppConst.LuaBundleMode)
        {
            //將lua文件打包成AB
            HandleLuaBundle();
        }
        else
        {
            HandleLuaFile();
        }
        if (AppConst.ExampleMode)
        {
            HandleExampleBundle();
        }
        //处理游戏资源包
        HandleGameBundle(true);

        string resPath = "Assets/" + AppConst.AssetDir;
        //AB打包選項
        BuildAssetBundleOptions options = BuildAssetBundleOptions.DeterministicAssetBundle | 
                                          BuildAssetBundleOptions.UncompressedAssetBundle;
        //開始打包
        BuildPipeline.BuildAssetBundles(resPath, maps.ToArray(), options, target);

        // 創建資源對比file.txt文件
        BuildFileIndex();

        string streamDir = Application.dataPath + "/" + AppConst.LuaTempDir;
        if (Directory.Exists(streamDir)) Directory.Delete(streamDir, true);
        AssetDatabase.Refresh();
    }

    static void AddBuildMap(string bundleName, string pattern, string path)
    {
        string[] files = Directory.GetFiles(path, pattern);
        if (files.Length == 0) return;

        for (int i = 0; i < files.Length; i++)
        {
            files[i] = files[i].Replace('\\', '/');
        }
        AssetBundleBuild build = new AssetBundleBuild();
        build.assetBundleName = bundleName;
        build.assetNames = files;
        maps.Add(build);
    }

    static void HandleGameBundle(bool buildFromDir = false)
    {
        string resPath = AppDataPath + "/" + AppConst.AssetDir + "/";
        if (!Directory.Exists(resPath)) Directory.CreateDirectory(resPath);

        if (buildFromDir)
        {
            string abPath = AppDataPath + "/LuaFramework/AssetBundle/";
            HandleGameBundleFromDir(abPath);
        }
        else
        {
            HandleGameBundleFrom();
        }
    }

    /// <summary>
    /// 处理游戏资源实例包
    /// </summary>
    static void HandleGameBundleFrom()
    {
        AddBuildMap("MainPanel" + AppConst.ExtName, "MainPanel.prefab", "Assets/LuaFramework/Penghu/Prefabs/UI");
        AddBuildMap("TopBarPanel" + AppConst.ExtName, "TopBarPanel.prefab", "Assets/LuaFramework/Penghu/Prefabs/UI");
        AddBuildMap("MessagePanel" + AppConst.ExtName, "MessagePanel.prefab", "Assets/LuaFramework/Penghu/Prefabs/UI");
        AddBuildMap("Atlas1" + AppConst.ExtName, "Atlas1.png", "Assets/LuaFramework/Penghu/Texture");
        AddBuildMap("background1" + AppConst.ExtName, "background1.jpg", "Assets/LuaFramework/Penghu/Texture");
        AddBuildMap("shared_asset" + AppConst.ExtName, "*.png", "Assets/LuaFramework/Examples/Textures/Shared");
    }

    //[MenuItem("LuaFramework/Build Test Resources")]
    static void HandleGameBundleFromDir(string abPath)
    {
        

        Dictionary<string, List<string>> result = new Dictionary<string, List<string>>();

        Recursive(abPath, result);
        foreach (var abBuild in result)
        {
            string abName = abBuild.Key.Replace(abPath, string.Empty);
            List<string> assetNames = new List<string>();
            AssetBundleBuild build = new AssetBundleBuild();
            build.assetBundleName = abName;
            UnityEngine.Debug.LogFormat("ABName:{0}:", abName);
            foreach (var assets in abBuild.Value)
            {
                string assetName = assets.Replace(CustomSettings.ProjectPath, string.Empty);
                assetNames.Add(assetName);
                UnityEngine.Debug.LogWarningFormat("    AssetName:{0}:", assetName);
            }
            build.assetNames = assetNames.ToArray();
            maps.Add(build);
        }
    }

    static void Recursive(string path, Dictionary<string, List<string>> result)
    {
        if (result == null || string.IsNullOrEmpty(path)) return;

        string[] names = Directory.GetFiles(path);
        string[] dirs = Directory.GetDirectories(path);

        string abName = path.Replace('\\', '/');
        List<string> assetsName = new List<string>();
        //
        foreach (string filename in names)
        {
            string ext = Path.GetExtension(filename);
            if (!CanBuild(filename)) continue;
            
            assetsName.Add(filename.Replace('\\', '/'));
            //files.Add(filename.Replace('\\', '/'));
        }
        //
        if(assetsName.Count > 0)
            result[abName] = assetsName;
        //
        foreach (string dir in dirs)
        {
           // paths.Add(dir.Replace('\\', '/'));
            Recursive(dir, result);
        }
    }

    

    /// <summary>
    /// 处理Lua代码包
    /// </summary>
    static void HandleLuaBundle()
    {
        string streamDir = Application.dataPath + "/" + AppConst.LuaTempDir;
        if (!Directory.Exists(streamDir)) Directory.CreateDirectory(streamDir);
        //luaDir:Application.dataPath+"Luaframework/Lua/"
        //FrameworkPath:Application.dataPath+"Luaframework/ToLua/Lua"
        string[] srcDirs = { CustomSettings.luaDir, CustomSettings.FrameworkPath + "/ToLua/Lua" };
        for (int i = 0; i < srcDirs.Length; i++)
        {

            if (AppConst.LuaByteMode)
            {
                string sourceDir = srcDirs[i];
                string[] files = Directory.GetFiles(sourceDir, "*.lua", SearchOption.AllDirectories);
                int len = sourceDir.Length;

                if (sourceDir[len - 1] == '/' || sourceDir[len - 1] == '\\')
                {
                    --len;
                }
                for (int j = 0; j < files.Length; j++) {
                    string str = files[j].Remove(0, len);
                    string dest = streamDir + str + ".bytes";
                    string dir = Path.GetDirectoryName(dest);
                    Directory.CreateDirectory(dir);
                    EncodeLuaFile(files[j], dest);
                }    
            }
            else
            {
                ToLuaMenu.CopyLuaBytesFiles(srcDirs[i], streamDir);
            }
        }

        string[] dirs = Directory.GetDirectories(streamDir, "*", SearchOption.AllDirectories);
        for (int i = 0; i < dirs.Length; i++)
        {
            string name = dirs[i].Replace(streamDir, string.Empty);
            name = name.Replace('\\', '_').Replace('/', '_');
            name = "lua/lua_" + name.ToLower() + AppConst.ExtName;

            string path = "Assets" + dirs[i].Replace(Application.dataPath, "");
            AddBuildMap(name, "*.bytes", path);
        }
        AddBuildMap("lua/lua" + AppConst.ExtName, "*.bytes", "Assets/" + AppConst.LuaTempDir);

        //-------------------------------处理非Lua文件----------------------------------
        string luaPath = AppDataPath + "/StreamingAssets/lua/";
        for (int i = 0; i < srcDirs.Length; i++)
        {
            paths.Clear(); files.Clear();
            string luaDataPath = srcDirs[i].ToLower();
            Recursive(luaDataPath);
            foreach (string f in files)
            {
                if (f.EndsWith(".meta") || f.EndsWith(".lua")) continue;
                string newfile = f.Replace(luaDataPath, "");
                string path = Path.GetDirectoryName(luaPath + newfile);
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);

                string destfile = path + "/" + Path.GetFileName(f);
                File.Copy(f, destfile, true);
            }
        }
        AssetDatabase.Refresh();
    }

    /// <summary>
    /// 处理框架实例包
    /// </summary>
    static void HandleExampleBundle()
    {
        string resPath = AppDataPath + "/" + AppConst.AssetDir + "/";
        if (!Directory.Exists(resPath)) Directory.CreateDirectory(resPath);

        AddBuildMap("prompt" + AppConst.ExtName, "*.prefab", "Assets/LuaFramework/Examples/Builds/Prompt");
        AddBuildMap("message" + AppConst.ExtName, "*.prefab", "Assets/LuaFramework/Examples/Builds/Message");

        AddBuildMap("prompt_asset" + AppConst.ExtName, "*.png", "Assets/LuaFramework/Examples/Textures/Prompt");
        AddBuildMap("shared_asset" + AppConst.ExtName, "*.png", "Assets/LuaFramework/Examples/Textures/Shared");
    }

    /// <summary>
    /// 处理Lua文件
    /// </summary>
    static void HandleLuaFile()
    {
        string resPath = AppDataPath + "/StreamingAssets/";
        string luaPath = resPath + "/lua/";

        //----------复制Lua文件----------------
        if (!Directory.Exists(luaPath))
        {
            Directory.CreateDirectory(luaPath); 
        }

        string[] luaPaths = { AppDataPath + "/LuaFramework/lua/", 
                              AppDataPath + "/LuaFramework/Tolua/Lua/" };

        for (int i = 0; i < luaPaths.Length; i++)
        {
            paths.Clear(); files.Clear();
            string luaDataPath = luaPaths[i].ToLower();
            Recursive(luaDataPath);
            int n = 0;
            foreach (string f in files)
            {
                if (f.EndsWith(".meta")) continue;
                string newfile = f.Replace(luaDataPath, "");
                string newpath = luaPath + newfile;
                string path = Path.GetDirectoryName(newpath);
                if (!Directory.Exists(path)) Directory.CreateDirectory(path);

                if (File.Exists(newpath))
                {
                    File.Delete(newpath);
                }
                if (AppConst.LuaByteMode)
                {
                    EncodeLuaFile(f, newpath);
                }
                else
                {
                    File.Copy(f, newpath, true);
                }
                UpdateProgress(n++, files.Count, newpath);
            } 
        }
        EditorUtility.ClearProgressBar();
        AssetDatabase.Refresh();
    }

    /// <summary>
    /// 創建資源對比file.txt文件
    /// </summary>
    static void BuildFileIndex()
    {
        string resPath = AppDataPath + "/StreamingAssets/";
        ///----------------------创建文件列表-----------------------
        string newFilePath = resPath + "/files.txt";
        if (File.Exists(newFilePath)) File.Delete(newFilePath);

        paths.Clear();
        files.Clear();
        //
        Recursive(resPath);

        FileStream fs = new FileStream(newFilePath, FileMode.CreateNew);
        StreamWriter sw = new StreamWriter(fs);
        for (int i = 0; i < files.Count; i++)
        {
            string file = files[i];
            string ext = Path.GetExtension(file);
            if (file.EndsWith(".meta") || file.Contains(".DS_Store")) continue;

            string md5 = Util.md5file(file);
            string value = file.Replace(resPath, string.Empty);
            string size =  new FileInfo(file).Length.ToString();

            sw.WriteLine(value + "|" + md5 + "|" + size);
        }
        sw.Close(); fs.Close();
    }

    /// <summary>
    /// 数据目录
    /// </summary>
    static string AppDataPath
    {
        get { return Application.dataPath.ToLower(); }
    }

    /// <summary>
    /// 遍历目录及其子目录
    /// </summary>
    static void Recursive(string path)
    {
        string[] names = Directory.GetFiles(path);
        string[] dirs = Directory.GetDirectories(path);
        //
        foreach (string filename in names)
        {
            string ext = Path.GetExtension(filename);
            if (ext.Equals(".meta")) continue;
            files.Add(filename.Replace('\\', '/'));
        }
        //
        foreach (string dir in dirs)
        {
            paths.Add(dir.Replace('\\', '/'));
            Recursive(dir);
        }
    }

    static void UpdateProgress(int progress, int progressMax, string desc)
    {
        string title = "Processing...[" + progress + " - " + progressMax + "]";
        float value = (float)progress / (float)progressMax;
        EditorUtility.DisplayProgressBar(title, desc, value);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="srcFile"></param>
    /// <param name="outFile"></param>
    public static void EncodeLuaFile(string srcFile, string outFile)
    {
        if (!srcFile.ToLower().EndsWith(".lua"))
        {
            File.Copy(srcFile, outFile, true);
            return;
        }
        bool isWin = true;
        string luaexe = string.Empty;
        string args = string.Empty;
        string exedir = string.Empty;
        string currDir = Directory.GetCurrentDirectory();
        if (Application.platform == RuntimePlatform.WindowsEditor)
        {
            isWin = true;
            luaexe = "luajit.exe";
            args = "-b " + srcFile + " " + outFile;
            exedir = AppDataPath.Replace("assets", "") + "LuaEncoder/luajit/";
        }
        else if (Application.platform == RuntimePlatform.OSXEditor)
        {
            isWin = false;
            luaexe = "./luac";
            args = "-o " + outFile + " " + srcFile;
            exedir = AppDataPath.Replace("assets", "") + "LuaEncoder/luavm/";
        }
        Directory.SetCurrentDirectory(exedir);
        ProcessStartInfo info = new ProcessStartInfo();
        info.FileName = luaexe;
        info.Arguments = args;
        info.WindowStyle = ProcessWindowStyle.Hidden;
        info.ErrorDialog = true;
        info.UseShellExecute = isWin;
        Util.Log(info.FileName + " " + info.Arguments);

        Process pro = Process.Start(info);
        pro.WaitForExit();
        Directory.SetCurrentDirectory(currDir);
    }

    [MenuItem("LuaFramework/Build Protobuf-lua-gen File")]
    public static void BuildLuaProtobufFile()
    {
        if (AppConst.ExampleMode)
        {
            UnityEngine.Debug.LogError("若使用编码Protobuf-lua-gen功能，需要自己配置外部环境！！");
            return;
        }

        string dir = AppDataPath + "/LuaFramework/Lua/3rd/pblua";
        paths.Clear(); files.Clear(); Recursive(dir);

        string protoc = "H:/protobuf/protoc-gen-lua/protoc.exe";
        string protoc_gen_dir = "\"H:/protobuf/protoc-gen-lua/plugin/protoc-gen-lua.bat\"";

        foreach (string f in files)
        {
            string name = Path.GetFileName(f);
            string ext = Path.GetExtension(f);
            if (!ext.Equals(".proto")) continue;

            ProcessStartInfo info = new ProcessStartInfo();
            info.FileName = protoc;
            info.Arguments = " --lua_out=./ --plugin=protoc-gen-lua=" + protoc_gen_dir + " " + name;
            info.WindowStyle = ProcessWindowStyle.Hidden;
            info.UseShellExecute = true;
            info.WorkingDirectory = dir;
            info.ErrorDialog = true;
            Util.Log(info.FileName + " " + info.Arguments);

            Process pro = Process.Start(info);
            pro.WaitForExit();
        }
        AssetDatabase.Refresh();
    }

    [MenuItem("LuaFramework/Build Protobuf-c#-gen File")]
    public static void BuildCShareProtobufFile()
    {
        if (AppConst.ExampleMode)
        {
            UnityEngine.Debug.LogError("若使用编码Protobuf-c#-gen功能，需要自己配置外部环境！！");
            return;
        }

        string workingDir = AppDataPath + "/LuaFramework";
        string protoDir = AppDataPath + "/LuaFramework/Proto";
        paths.Clear(); files.Clear(); Recursive(protoDir);

        string protogen = "H:/protobuf/ProtoGen/ProtoGen/ProtoGen/protogen.exe";
        string input = "Proto/";
        string output = "Scripts/Data/";

        foreach (string f in files)
        {
            string name = Path.GetFileName(f);
            string ext = Path.GetExtension(f);
            if (!ext.Equals(".proto")) continue;

            ProcessStartInfo info = new ProcessStartInfo();
            info.FileName = protogen;
            info.Arguments = " -i:" + input + name + " -o:" + output + name.Replace("proto", "cs");
            info.WindowStyle = ProcessWindowStyle.Hidden;
            info.UseShellExecute = true;
            info.WorkingDirectory = workingDir;
            info.ErrorDialog = true;
            Util.Log(info.FileName + " " + info.Arguments);
            Process pro = Process.Start(info);
            pro.WaitForExit();
            pro.ErrorDataReceived += (a, b) => {
                UnityEngine.Debug.Log(a.ToString());
                UnityEngine.Debug.Log(b.Data);
            };

        }
        AssetDatabase.Refresh();
    }
}