using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;
using System.Security;

public class HttpClient
{
    private HttpWebRequest request;

    private HttpWebResponse response;

    private Uri uri;

    public AsyncCallback ResponseCallback;

    class RequestState
    {
        public RequestState(HttpWebRequest request, Action<string> callback)
        {
            this.callback = callback;
            this.request = request;
        }

        public Action<string> callback;
        public HttpWebRequest request;
    }

    public HttpClient(string uri)
    {
        ServicePointManager.ServerCertificateValidationCallback =
            new System.Net.Security.RemoteCertificateValidationCallback((a,b,c,d) => {return true; });
        this.uri = new Uri(uri);
    }

    public HttpClient(Uri uri)
    {
        ServicePointManager.ServerCertificateValidationCallback =
            new System.Net.Security.RemoteCertificateValidationCallback((a, b, c, d) => { return true; });
        this.uri = uri;
    }

    public IAsyncResult GetResponseAsync(Action<string> callback = null)
    {
        request = WebRequest.CreateDefault(uri) as HttpWebRequest;
        return request.BeginGetResponse(OnGetResponse, new RequestState(request, callback));
    }

    private void OnGetResponse(IAsyncResult ar)
    {
        RequestState state = ar.AsyncState as RequestState;
        HttpWebResponse response = state.request.EndGetResponse(ar) as HttpWebResponse;
        LuaFramework.Util.Log("ContenType:" + response.ContentType);
        
        Stream stream = response.GetResponseStream();

        

        byte[] buffer = new byte[8 * 10240];
        int len = stream.Read(buffer, 0, buffer.Length);
        LuaFramework.Util.Log("buffer len:" + buffer.Length + "/len:" + len);
        byte[] bytes = new byte[len];
        Array.Copy(buffer, bytes, len);

        //if (response.ContentType.Equals("image/jpeg"))
        //{
        //    try
        //    {
        //        System.IO.FileInfo info = new System.IO.FileInfo(UnityEngine.Application.persistentDataPath + "/headimg.jpg");
        //        System.IO.File.WriteAllBytes(UnityEngine.Application.persistentDataPath + "/headimg.jpg", bytes);

        //    }
        //    catch (System.Exception e) { UnityEngine.Debug.LogError(e.Message); }
        //    finally
        //    {
        //        UnityEngine.Debug.Log(UnityEngine.Application.dataPath);
        //        //fileStream.Close();
        //    }
        //    UnityEngine.Debug.Log(UnityEngine.Application.persistentDataPath);
        //}

        if (state.callback != null)
        {
            state.callback(Encoding.UTF8.GetString(bytes));
        }
    }
}
