using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LuaFramework;
using System.Text;
using Newtonsoft.Json;

namespace JSDK
{
    
    public class WXData : IData
    {

        public WXUser user;

        private string url;

        public string Url { get; set; }

        public StorageMode StorageMode { get; set; }

        public StorageSite StorageSite { get; set; }

        public WXData()
        {
            StorageMode = StorageMode.JSON;
            StorageSite = StorageSite.Client;
            Url = AppConst.ConfigurationUrl + "/WXData.json";
            Debug.Log(url);
        }

        public void InitData()
        {
            //using (FileStream stream = new FileStream(Url, FileMode.CreateNew, FileAccess.Read))
            //{
            //    int len = (int)stream.Length;
            //    byte[] buffer = new byte[len];

            //    int r = stream.Read(buffer, 0, buffer.Length);
            //    string jsonString = Encoding.UTF8.GetString(buffer);

            //    user = JsonConvert.DeserializeObject<WXUser>(jsonString);
            //}
        }

        public void SaveData()
        {
            throw new NotImplementedException();
        }

        public void ResetData()
        {
            throw new NotImplementedException();
        }
    }

}