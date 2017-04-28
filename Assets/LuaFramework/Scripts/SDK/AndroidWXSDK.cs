using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace JSDK
{
    public class AndroidWXSDK : WXSDK{

        private AndroidJavaClass m_UnityPlayer;
        private AndroidJavaObject m_MainActivity;

        public AndroidWXSDK()
        {
            try
            {
                //
                m_UnityPlayer = 
                    new AndroidJavaClass(SDKConst.UnityPlayer);
                //
                m_MainActivity = 
                    m_UnityPlayer.GetStatic<AndroidJavaObject>(SDKConst.CurrentActivity);
            }
            catch (Exception e)
            {
                Debug.LogError(e.Message);
            }
        }

        public AndroidWXSDK(AndroidJavaClass unityPlayer)
        {
            m_UnityPlayer = unityPlayer;

            m_MainActivity = 
                unityPlayer.GetStatic<AndroidJavaObject>(SDKConst.CurrentActivity);
        }

        public override bool Login()
        {
            m_MainActivity.Call("RequestLogin");
            return true;
        }

        public override bool SendMessageToWx(object msg, int type)
        {
            throw new NotImplementedException();
        }
    }
}
