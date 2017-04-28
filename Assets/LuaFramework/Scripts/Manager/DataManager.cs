using JSDK;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LuaFramework
{
    public class DataManager : Manager
    {
        private Dictionary<string, IData> m_datas;

        protected void Awake()
        {
            m_datas = new Dictionary<string, IData>();
            AddAllData();
            InitData();
        }

        private void AddData(string dataname, IData data)
        {
            m_datas.Add(dataname, data);
        }

        private void AddAllData()
        {
            AddData("WXData", new WXData());
        }

        private void InitData()
        {
            foreach (var data in m_datas)
            {
                data.Value.InitData();
            }
        }
    }
}
