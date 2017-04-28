using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LuaFramework
{
    public interface IData
    {

        string Url { get; set; }

        StorageMode StorageMode { get; set; }

        StorageSite StorageSite { get; set; }

        void InitData();

        void SaveData();

        void ResetData();

    }

    public enum StorageSite
    {
        Server = 0,
        Client,
    }

    public enum StorageMode
    {
        JSON = 0,
        XML,
        ProtoBuf,
        Cache,
    }
}

