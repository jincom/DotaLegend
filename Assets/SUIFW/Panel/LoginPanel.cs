using System.Collections;
using System.Collections.Generic;
using SUIFW;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class LoginPanel : BaseUIForm
{
    //transform
    private Transform _loginContent;
    private Transform _loadingContent;

    //UI
    private Button _btnLogin;
    private Text _stateText;
    private Text _stateDetailText;

    //注冊的消息列表
    List<string> MessageList
    {
        
        get
        {
            return new List<string>()
            {
                NotiConst.UPDATE_MESSAGE,
                NotiConst.UPDATE_EXTRACT,
                NotiConst.UPDATE_DOWNLOAD,
                NotiConst.UPDATE_PROGRESS,
                NotiConst.UPDATE_CONFIRM,
                NotiConst.UPDATE_COMPLETE,
            };
        }
    }

    public void SetButtonSprite(Sprite s)
    {
        _btnLogin.image.overrideSprite = s;
    }

    //Awake
    protected void Awake()
    {

        _loginContent = transform.FindChild("LoginContent");
        _loadingContent = transform.FindChild("LoadingContent");

        _stateText = _loadingContent.FindChild("StateText").GetComponent<Text>();
        _stateDetailText = _loadingContent.FindChild("StateDetail").GetComponent<Text>();
        _btnLogin = _loginContent.FindChild("btn_login").GetComponent<Button>();

        _stateText.text = "游戲啓動中...";
        _stateDetailText.text = " ";

        _loginContent.gameObject.SetActive(false);
        _loadingContent.gameObject.SetActive(true);

        _btnLogin.onClick.AddListener
        (
            () =>
            {
                if(Application.platform == RuntimePlatform.Android ||
                Application.platform == RuntimePlatform.IPhonePlayer)
                    SDKManager.WXAPI.Login();

                OpenUIForm("MainPanel");
                OpenUIForm("TopBarPanel");
            }
        );

        RemoveMessage(this, MessageList);
        RegisterMessage(this, MessageList);
    }

    // Use this for initialization
    void Start()
    {

    }


    public override void OnMessage(IMessage message)
    {
        object data = message.Body;
        switch (message.Name)
        {
            case NotiConst.UPDATE_CONFIRM:
                OpenUIForm("UpdateTipsPanel", false, false);
                facade.SendMessageCommand(NotiConst.UPDATE_TIPS, data);
                break;
            case NotiConst.UPDATE_MESSAGE:
                _stateText.text = data.ToString();
                break;
            case NotiConst.UPDATE_PROGRESS:
                int progress = (int) data;
                _stateDetailText.text = string.Format("處理進度：>{0}%", progress);
                break;
            case NotiConst.UPDATE_DOWNLOAD:
                _stateDetailText.text = data.ToString();
                break;
            case NotiConst.UPDATE_COMPLETE:
                _loginContent.gameObject.SetActive(true);
                _loadingContent.gameObject.SetActive(false);
                break;
        }
    }
}
