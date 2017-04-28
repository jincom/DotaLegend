using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using LuaFramework;
using SUIFW;
using UnityEngine;
using UnityEngine.UI;

public class UpdateTipsPanel : BaseUIForm
{
    //聲明Button變量
    private Button _btnOk;
    private Button _btnNo;
    private Text _tipsText;

    //聲明transform變量
    private Transform _btnOkTrans;
    private Transform _btnNoTrans;
    private Transform _frameTrans;
    private RectTransform _frameRectTrans;

    //聲明DOTween變量
    private Tween _posTween;
    private Tween _fadeTween;

    //UI效果變量
    private CanvasGroup _frameCG;

    //注冊的消息列表
    List<string> MessageList
    {

        get
        {
            return new List<string>()
            {
                NotiConst.UPDATE_TIPS,
            };
        }
    }

    protected void Awake()
    {
        //設置窗體類型
        CurrentUIType.UIForms_Type = 1;

        //初始化變量
        _frameTrans = transform.FindChild("TipsFrame");
        _frameRectTrans = (RectTransform)_frameTrans;

        _btnOkTrans = _frameTrans.FindChild("btn_Ok");
        _btnNoTrans = _frameTrans.FindChild("btn_No");

        _frameCG = _frameTrans.GetComponent<CanvasGroup>();

        _btnOk = _btnOkTrans.GetComponent<Button>();
        _btnNo = _btnNoTrans.GetComponent<Button>();
        _tipsText = _frameTrans.FindChild("text_tips").GetComponent<Text>();

        RemoveMessage(this, MessageList);
        RegisterMessage(this, MessageList);
    }

    protected void Start()
    {
        //給button添加事件
        _btnOk.onClick.AddListener(OnOkClick);
        _btnNo.onClick.AddListener(OnNoClick);

        //給Tween變量初始化
        _fadeTween = _frameCG.DOFade(1f, 0.4f).From();
        _fadeTween.Pause();
        _posTween = _frameRectTrans.DOAnchorPos(new Vector2(0f, 0f), 0.4f).From();
        _posTween.Pause();

    }

    public override void Display()
    {
        base.Display();
        _frameCG.DOFade(0f, 0.4f).From();
        _frameRectTrans.DOAnchorPos(new Vector2(0f, -50f), 0.4f).From();
        //_fadeTween.Restart();
        //_posTween.Restart();
    }

    public override void Redisplay()
    {
        base.Redisplay();
        _frameCG.DOFade(0f, 0.4f).From();
        _frameRectTrans.DOAnchorPos(new Vector2(0f, -50), 0.4f).From();
        //_fadeTween.Restart();
        //_posTween.Restart();
    }

    public override void OnMessage(IMessage message)
    {
        object data = message.Body;
        switch (message.Name)
        {
            case NotiConst.UPDATE_TIPS:
                int bSize = (int) data;
                float mbSize = bSize / 1024f / 1024f;
                _tipsText.text = string.Format("{0}({1:N2} MB)", _tipsText.text, mbSize);

                break;
        }
    }

    private void OnOkClick()
    {
        Debug.Log("OKClick");
        facade.GetManager<GameManager>(ManagerName.Game).PermitUpdate = true;
        CloseUIForm(name);
    }

    private void OnNoClick()
    {
        Debug.Log("NoClick");
        CloseUIForm(name);
    }
}
