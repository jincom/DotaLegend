UIFormsType = {
    Normal = 0,
    Fixed = 1,
    PopUp = 2,   
}

UIFormShowMode = {
    Normal = 0,
    ReverseChange = 1,
    HideOther = 2,
}

UIFormLucenyType = {
    Lucency = 0,
    Translucence = 1,
    ImPenetrable = 2,
}

CtrlNames = {
	Prompt = "PromptCtrl",
	Message = "MessageCtrl",
}

PanelNames = {
	"PromptPanel",	
	"MessagePanel",
    --"LoginPanel",
}

--协议类型--
ProtocalType = {
	BINARY = 0,
	PB_LUA = 1,
	PBC = 2,
	SPROTO = 3,
}
--当前使用的协议类型--
TestProtoType = ProtocalType.BINARY;

--定义Unity类
Util = LuaFramework.Util;
AppConst = LuaFramework.AppConst;
LuaHelper = LuaFramework.LuaHelper;
ByteBuffer = LuaFramework.ByteBuffer;

resMgr = LuaHelper.GetResManager();
panelMgr = LuaHelper.GetPanelManager();
soundMgr = LuaHelper.GetSoundManager();
networkMgr = LuaHelper.GetNetManager();
uiMgr = LuaHelper.GetUIManager();

WWW = UnityEngine.WWW;
GameObject = UnityEngine.GameObject;
DoTween = DG.Tweening.Tweener;
Sequence = DG.Tweening.Sequence;

