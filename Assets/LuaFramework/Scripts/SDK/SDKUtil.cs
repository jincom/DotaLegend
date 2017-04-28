using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

namespace JSDK{
    public class SDKUtil
    {

        public static string GetAccessTokenUri(string code)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append(WXSDK.REQUEST_URL.REQUEST_TOKEN);
            sb.Replace("APPID", WXSDK.APP_ID);
            sb.Replace("SECRET", WXSDK.SECRET);
            sb.Replace("CODE", code);

            return sb.ToString();
        }

        public static string GetUserInfoUri(string access_token, string openid)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append(WXSDK.REQUEST_URL.REQUEST_USER_INFO);
            sb.Replace("ACCESS_TOKEN", access_token);
            sb.Replace("OPENID", openid);

            return sb.ToString();
        }
    }

}