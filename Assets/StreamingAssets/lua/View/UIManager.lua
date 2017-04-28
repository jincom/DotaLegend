--region *.lua
--Date
--此文件由[BabeLua]插件自动生成
require('Common/class')
require('Common/UGUIDefine')
--require('Common/UnityApi')

local UIManager = class()
local LayerMask = UnityEngine.LayerMask
UIManager = {}

local instance


--ct.name = "i am UIManager"
--LuaFramework.Util.LogWarning('================================>From UIManager')
--LuaFramework.Util.LogWarning(ct.name..'================================>From UIManager')

function UIManager:Instance()
    if instance == nil then
        PrivateCtor()
    end
    return instance
end


function PrivateCtor()
    instance = {}
    instance.gameobject = GameObject('UIRoot')
    instance.gameobject.layer = LayerMask.NameToLayer('UI')
    instance.gameobject:AddComponent(typeof(UnityEngine.RectTransform))
    --uiroot的canvas设置
    local canvas = instance.gameobject:AddComponent(typeof(UnityEngine.Canvas))
    instance.root = instance.gameobject:GetComponent(typeof(UnityEngine.Transform))
    canvas.renderMode = UnityEngine.RenderMode.ScreenSpaceCamera
    canvas.pixelPerfect = false
    --uicamera的gameobject设置
    local camObj = GameObject('UICamera')
    camObj.layer = LayerMask.NameToLayer('UI')
    camObj.transform.parent = instance.gameobject.transform
    camObj.transform.localPosition = Vector3.New(0, 0, -100)
    local camera = camObj:AddComponent(typeof(UnityEngine.Camera))
    camObj:AddComponent(typeof(UnityEngine.GUILayer))
    --uicamera的参数设置
    
    camera.clearFlags = UnityEngine.CameraClearFlags.Depth
    camera.orthographic = true
    canvas.worldCamera = camera   
    camera.cullingMask = 32
    camera.nearClipPlane = -50
    camera.farClipPlane = 50
    
    instance.uiCamera = camera
    
    local cs = instance.gameobject:AddComponent(typeof(UnityEngine.UI.CanvasScaler))
    cs.uiScaleMode = UnityEngine.UI.CanvasScaler.ScaleMode.ScaleWithScreenSize
    cs.referenceResolution = Vector2.New(1136, 640)
    cs.screenMatchMode = UnityEngine.UI.CanvasScaler.ScreenMatchMode.Expand

    local subRoot = CreateSubCanvasForRoot(instance.root, 250)
    subRoot.name = "FixedRoot"
    instance.fixedRoot = subRoot.transform
    instance.fixedRoot.localScale = Vector3.one

    local subRoot = CreateSubCanvasForRoot(instance.root, 0)
    subRoot.name = "NormalRoot"
    instance.fixedRoot = subRoot.transform
    instance.fixedRoot.localScale = Vector3.one

    local subRoot = CreateSubCanvasForRoot(instance.root, 500)
    subRoot.name = "PopupRoot"
    instance.fixedRoot = subRoot.transform
    instance.fixedRoot.localScale = Vector3.one
    --------设置事件系统
    local esObj = UnityEngine.GameObject.Find('EventSystem')
    if eventObj ~= nil then
        GameObject:DestroyImmediate(esObj)
    end
    local eventObj = UnityEngine.GameObject('EventSystem')
    eventObj.layer = LayerMask.NameToLayer('UI')
    eventObj.transform:SetParent(instance.gameobject.transform)
    eventObj:AddComponent(typeof(UnityEngine.EventSystems.EventSystem)) 
    eventObj:AddComponent(typeof(UnityEngine.EventSystems.StandaloneInputModule))


end

--设置canvas的父节点
function CreateSubCanvasForRoot(rootTrans, sort)
    local go = UnityEngine.GameObject('canvas')
    go.transform.parent = rootTrans
    go.layer = LayerMask.NameToLayer('UI')

    local canvas = go:AddComponent(typeof(UnityEngine.Canvas))
    canvas.overrideSorting = true
    canvas.sortingOrder = sort

    local rect = go:GetComponent(typeof(UnityEngine.RectTransform))
    rect:SetInsetAndSizeFromParentEdge(UnityEngine.RectTransform.Edge.Top, 0, 0)
    rect:SetInsetAndSizeFromParentEdge(UnityEngine.RectTransform.Edge.Top, 0, 0)
    rect.anchorMin = Vector2.zero
    rect.anchorMin = Vector2.one

    go:AddComponent(typeof(UnityEngine.UI.GraphicRaycaster))

    return go
end

function Send()
    local luaHelper = LuaFramework.LuaHelper
    local buffer = LuaFramework.ByteBuffer.New();
    buffer:WriteShort('104');
   -- buffer:WriteByte(ProtocalType.BINARY);
    buffer:WriteString("夜空中最亮的星，能否看见？");
   -- buffer:WriteInt(200);
    local networkMgr = luaHelper.GetNetManager()
    networkMgr:SendMessage(buffer);
    --logWarn('send message to server============>')
    LuaFramework.Util.LogWarning('send message to server============>')
end

Send()

return UIManager
--endregion
