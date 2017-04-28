using System.Collections;
using System.Collections.Generic;
using Newtonsoft;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using UnityEngine;
using LuaFramework;
using SDKEvent = System.Collections.Generic.KeyValuePair<string, string>;
using System;

namespace JSDK
{
    public class SDKManager : Manager
    {
        //游戏运行平台
        private RuntimePlatform m_platform;

        private Queue<KeyValuePair<string, string>> m_events;

        private static readonly object m_lockObject = new object();

        private WXSDK wxapi = null;

        public WXSDK WXAPI
        {
            get
            {
                if (wxapi == null)
                {
                    wxapi = SDKFactory.CreateWXSDK();
                }
                return wxapi;
            }
        }

        //public class SDKEvent
        //{
        //    public int eventid;
        //    public object data;

        //    public SDKEvent(int id, object data)
        //    {
        //        this.eventid = id;
        //        this.data = data;
        //    }
        //}

        //初始化
        protected void Awake()
        {
            m_events = new Queue<KeyValuePair<string, string>>();

            m_platform = Application.platform;

            if (m_platform == RuntimePlatform.Android)
            {

            }
            else
            {

            }
            
        }

        //
        protected void Update()
        {
            lock (m_lockObject)
            {
                while (m_events.Count > 0)
                {
                    SDKEvent sdkEvent = m_events.Dequeue();

                    switch (sdkEvent.Key)
                    {
                        
                        case SDKConst.SDK_AUTH_RESP:
                            HandleAuthResp(sdkEvent.Value);
                            break;
                        case " ":
                            break;
                        default:
                            break;
                    }
                }
            }
        }

        //处理Auth授权响应函数
        private void HandleAuthResp(string jsonString)
        {
            try
            {
                JObject json = 
                    JsonConvert.DeserializeObject<JObject>(jsonString);

                JToken errcode = null;
                //判断返回来的数据是否无效
                if (json.TryGetValue(WXSDK.FIELD_NAME.ERROR_CODE, out errcode))
                {
                    string errmsg = json.Value<string>(WXSDK.FIELD_NAME.ERR_MSG);
                    Debug.LogErrorFormat("AuthResp data invalid!\nerrcode:{0}\nerrmsg:{1}", errcode.Value<int>(), errmsg);
                }
                //数据正常
                else
                {
                    string code = json.Value<string>(WXSDK.FIELD_NAME.CODE);

                    string uri = SDKUtil.GetAccessTokenUri(code);

                    WWWReqData
                    (
                        uri, (jsonMsg) => 
                        {
                            try
                            {
                                Debug.Log("TokenData:" + jsonString);
                                Proto.WXData.WXToken token = JsonConvert.DeserializeObject<Proto.WXData.WXToken>(jsonMsg);
                                
                                Debug.Log(token.access_token);
                                Debug.Log(token.expires_in);
                                Debug.Log(token.openid);
                                Debug.Log(token.refresh_token);
                                Debug.Log(token.scope);

                                string userurl = SDKUtil.GetUserInfoUri(token.access_token, token.openid);
                                WWWReqData
                                (
                                    userurl, (jsonstring1)=> 
                                    {
                                        Debug.Log("UserData:" + jsonstring1);
                                        Proto.WXData.WXUserInfo user = JsonConvert.DeserializeObject<Proto.WXData.WXUserInfo>(jsonstring1);
                                        Debug.Log("headimgurl:"+ user.headimgurl);

                                        WWW wwwimg = new WWW(user.headimgurl);
                                        while (!wwwimg.isDone) {}
                                        if (wwwimg.error != null) { Debug.Log("图片下载失败！" + wwwimg.error); return; }

                                        Sprite s = Sprite.Create(wwwimg.texture, new Rect(0, 0, 200, 200), Vector2.zero);
                                        GameObject.Find("").GetComponent<LoginPanel>().SetButtonSprite(s);
                                    }
                                );
                            }
                            catch (Exception e)
                            {
                                Debug.LogError(e.StackTrace);
                            }
                        }
                    );
                }
            }
            catch (Exception e)
            {               
                Debug.LogError(e.Message);
                Debug.LogError(e.StackTrace);
            }
        }

        public void WWWReqData(string url, Action<string> callback = null)
        {
            StartCoroutine(OnReqAccessToken(url, callback));
        }



        IEnumerator OnReqAccessToken(string url, Action<string> callback)
        {
            WWW www = new WWW(url);yield return www;

            if (www.error != null)
            {
                Debug.LogErrorFormat("");
                yield break;
            }

            
            if (callback != null) { callback(www.text); }

            www.Dispose();
            www = null;
        }

        public void AddEvent(SDKEvent sdkEvent)
        {
            lock (m_lockObject)
            {
                m_events.Enqueue(sdkEvent);
            }
        }

        //Android消息回掉函数
        public void OnSDKMessage(string jsonString)
        {
            Util.LogFormat("unity这边收到了消息：{0}", jsonString);

            try
            {
                //协议号是msg前4位
                string protocol = jsonString.Substring(0, 4);
                //去掉协议号，留下msg主体
                jsonString = jsonString.Remove(0, 4);

                AddEvent(new SDKEvent(protocol, jsonString));
            }
            catch (System.Exception e)
            {
                UnityEngine.Debug.LogError(jsonString + "： json解析错误！");
                UnityEngine.Debug.LogError(e.Message);
            }
        }
    }
}
