using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using JSDK;
using LuaFramework;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

public class WXSDKCommand : ControllerCommand {

    public override void Execute(IMessage message)
    {
        KeyValuePair<int, JObject> data = (KeyValuePair<int, JObject>)message.Body;

        switch (data.Key)
        {
            case 1001:
                //SDK.WeiXin.SendTextToWX("你好吗");
                string uri = SDKUtil.GetAccessTokenUri(data.Value.Value<string>("code"));
                Debug.Log("url is :" + uri);
                HttpClient client = new HttpClient(uri);
                client.GetResponseAsync(OnReceiveAccessToken);
                break;
            default:
                break;
        }
    }

    private void OnReceiveAccessToken(string msg)
    {
        try
        {
            JObject json = JsonConvert.DeserializeObject<JObject>(msg);
            string access_token = json.Value<string>("access_token");
            int expires_in = json.Value<int>("expires_in");
            string refresh_token = json.Value<string>("refresh_token");
            string openid = json.Value<string>("openid");
            string scope = json.Value<string>("scope");

            string uri = SDKUtil.GetUserInfoUri(access_token, openid);
            HttpClient client = new HttpClient(uri);
            client.GetResponseAsync(OnReceiveUserInfo);

        }
        catch (System.Exception e)
        {
            Debug.LogError(e.Message);
        }
    }

    private void OnReceiveUserInfo(string msg)
    {
        try {
            JObject json = JsonConvert.DeserializeObject<JObject>(msg);
            string headimgurl = json.Value<string>("headimgurl");
            Debug.Log(msg);

            //HttpClient client = new HttpClient(headimgurl.Replace("\\", ""));
            //client.GetResponseAsync(OnReceiveHeadImg);
            
        }
        catch (System.Exception e) {
            Debug.LogError(e.Message);
        }

    }

    private void OnReceiveHeadImg(string msg)
    {
        Debug.Log(msg);
        byte[] buffer = System.Text.Encoding.UTF8.GetBytes(msg);

        try
        {

            System.IO.FileInfo info = new System.IO.FileInfo(Application.persistentDataPath + "/headimg.jpeg");
            System.IO.File.WriteAllBytes(Application.persistentDataPath + "/headimg.jpeg", buffer);

        }
        catch (System.Exception e) { Debug.LogError(e.Message); }
        finally
        {
            Debug.Log(Application.dataPath);
            //fileStream.Close();
        }
        Debug.Log(Application.persistentDataPath);
    }

    
}
