using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LuaFramework;
using Newtonsoft.Json;

namespace JSDK
{
    public abstract class WXSDK : IWXAPIHandler
    {
        private SDKManager mSDKMgr;
        public WXSDK()
        {
            mSDKMgr = AppFacade.Instance.GetManager<SDKManager>(ManagerName.SDK);
        }
        //登陆
        public abstract bool Login();

        //发送消息到微信
        public abstract bool SendMessageToWx(object msg, int type);

        public void OnHandleAuthResp(string json)
        {
            //string code = 
            //string url = SDKUtil.GetAccessTokenUri();
            mSDKMgr.WWWReqData(REQUEST_URL.REFRESH_TOKEN);
        }

        public const string WXAPI_TAG = "WXAPI";

        public const string APP_ID = "wxcc17bda0046b56e6";

        public const string SECRET = "2993d133baaefb8e33bee52433aa5a42";


        public static class SCOPE_ID
        {
            public const string USER_INFO = "snsapi_userinfo";
        }

        public static class MSG_TYPE
        {
            public const int TYPE_APPDATA = 7;
            public const int TYPE_EMOJI = 8;
            public const int TYPE_FILE = 6;
            public const int TYPE_IMAGE = 2;
            public const int TYPE_MUSIC = 3;
            public const int TYPE_PRODUCT = 10;
            public const int TYPE_TEXT = 1;
            public const int TYPE_UNKNOWN = 0;
            public const int TYPE_URL = 5;
            public const int TYPE_VIDEO = 4;
        }

        public static class GRANT_TYPE
        {
            public const string AUTHORIZATION_CODE = "authorization_code";

            public const string REFRESH_TOKEN = "refresh_token";
        }

        public static class FIELD_NAME
        {
            /// <summary>
            /// 调用接口凭证
            /// </summary>
            public const string ACCESS_TOKEN = "access_token";

            ///<summary>
            ///access_token接口调用凭证超时时间，单位（秒）
            ///</summary>
            public const string EXPIRES_IN = "expires_in";

            ///<summary>
            ///用户刷新access_token
            ///</summary>
            public const string REFRESH_TOKEN = "refresh_token";
            /**
             * 国家地区语言版本，zh_CN 简体，zh_TW 繁体，en 英语，默认为zh-CN
             * */
            public const string LANG = "lang";
            /**
             * 普通用户的标识，对当前开发者帐号唯一
             * */
            public const string OPEN_ID = "openid";
            /**
             * 用户授权的作用域，使用逗号（,）分隔
             * */
            public const string SCOPE = "scope";
            /**
             * 普通用户昵称
             * */
            public const string NICK_NAME = "nickname";
            /**
             * 普通用户性别，1为男性，2为女性
             * */
            public const string SEX = "sex";
            /**
             * 普通用户个人资料填写的省份
             * */
            public const string PROVINCE = "province";
            /**
             * 普通用户个人资料填写的城市
             * */
            public const string CITY = "city";
            /**
             * 国家，如中国为CN
             * */
            public const string COUNTRY = "country";
            /**
             * 用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空
             * */
            public const string HEAD_IMG_URL = "headimgurl";
            /**
             * 用户特权信息，json数组，如微信沃卡用户为（chinaunicom）
             * */
            public const string PRIVILEGE = "privilege";
            /**
             * 用户统一标识。针对一个微信开放平台帐号下的应用，同一用户的unionid是唯一的。
             * */
            public const string UNION_ID = "unionid";

            public const string CODE = "code";

            public const string ERROR_CODE = "errcode";

            public const string ERR_MSG = "errmsg";
        }

        public class REQUEST_URL
        {
            /**
             * 检验授权凭证（access_token）是否有效
             * */
            public const string CHECKOUT_TOKEN =
                    "https://api.weixin.qq.com/sns/auth?access_token=ACCESS_TOKEN&openid=OPENID";
            /**
             * access_token是调用授权关系接口的调用凭证，由于access_token有效期（目前为2个小时）较短，当access_token超时后，可以使用refresh_token进行刷新，access_token刷新结果有两种：
            1.若access_token已超时，那么进行refresh_token会获取一个新的access_token，新的超时时间；
            2.若access_token未超时，那么进行refresh_token不会改变access_token，但超时时间会刷新，相当于续期access_token。
            refresh_token拥有较长的有效期（30天），当refresh_token失效的后，需要用户重新授权，所以，请开发者在refresh_token即将过期时（如第29天时），进行定时的自动刷新并保存好它。
             * */
            public const string REFRESH_TOKEN =
                    "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN";
            /**
             * 通过code获取access_token的接口。 
             * */
            public const string REQUEST_TOKEN =
                    "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";
            /**
             * 此接口用于获取用户个人信息。开发者可通过OpenID来获取用户基本信息。特别需要注意的是，如果开发者拥有多个移动应用、网站应用和公众帐号，可通过获取用户基本信息中的unionid来区分用户的唯一性，因为只要是同一个微信开放平台帐号下的移动应用、网站应用和公众帐号，用户的unionid是唯一的。换句话说，同一用户，对同一个微信开放平台下的不同应用，unionid是相同的。请注意，在用户修改微信头像后，旧的微信头像URL将会失效，因此开发者应该自己在获取用户信息后，将头像图片保存下来，避免微信头像URL失效后的异常情况。
             * */
            public const string REQUEST_USER_INFO =
                    "https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID";
        }


    }
}
