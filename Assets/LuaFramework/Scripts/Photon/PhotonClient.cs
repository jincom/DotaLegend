using System;
using System.Collections;
using System.Collections.Generic;
using ExitGames.Client.Photon;
using UnityEngine;

public class PhotonClient : IPhotonPeerListener
{
    private float interval;
    private float nextCallTime;

    private PhotonPeer client;

    public PhotonClient()
    {
        interval = 50f;
        nextCallTime = Time.time;
    }

    public void Connect()
    {

    }


    public void DebugReturn(DebugLevel level, string message)
    {
        throw new NotImplementedException();
    }

    public void OnEvent(EventData eventData)
    {
        throw new NotImplementedException();
    }

    public void OnOperationResponse(OperationResponse operationResponse)
    {
        throw new NotImplementedException();
    }

    public void OnStatusChanged(StatusCode statusCode)
    {
        throw new NotImplementedException();
    }

    public void Service()
    {
        if (Time.time >= nextCallTime)
        {
            client.Service();
            nextCallTime = Time.time + interval;
        }
    }

    private void PhotonAPI()
    {
        ///<summary>
        /// 1.连接服务器
        /// 2.参数支持IP地址，也支持域名
        /// 3.AppName:服务器已经配置过的其中一个APP
        /// 4.object参数data
        /// 5.连接成功会调用
        /// </summary>
        client.Connect("IPAddress", "AppName", new object());
    }
}
