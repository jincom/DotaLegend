using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace JSDK {
    public interface IWXAPIHandler
    {
        void OnHandleAuthResp(string json);
    }
}
