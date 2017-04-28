using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace JSDK
{
    public class SDKFactory
    {
        public static WXSDK CreateWXSDK()
        {
            WXSDK wxsdk = null;

            switch (Application.platform)
            {
                case RuntimePlatform.Android:
                    wxsdk = new AndroidWXSDK();
                    break;
                case RuntimePlatform.IPhonePlayer:
                    break;
                default:
                    break;
            }

            return wxsdk;
        }

    }
}
