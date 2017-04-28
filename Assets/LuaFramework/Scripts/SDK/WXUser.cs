using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace JSDK
{
    //微信用户信息类
    public class WXUser
    {
        public string openid;

        public string nickname;

        public int sex;

        public string province;

        public string city;

        public string country;

        public string headimgurl;

        public List<string> privilege;

        public string unionid;
    }

    //微信Token类
    public class WXToken
    {
        public string access_token;

        public int expires_in;
    }
}


