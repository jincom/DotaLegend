﻿#define USING_DOTWEENING

using UnityEngine;
using System;
using System.Collections.Generic;
using LuaInterface;
using LuaFramework;


using BindType = ToLuaMenu.BindType;
using UnityEngine.UI;
using System.Reflection;

public static class CustomSettings
{
    public static string FrameworkPath = AppConst.FrameworkRoot;
    public static string saveDir = FrameworkPath + "/ToLua/Source/Generate/";
    public static string luaDir = FrameworkPath + "/Lua/";
    public static string toluaBaseType = FrameworkPath + "/ToLua/BaseType/";
    public static string toluaLuaDir = FrameworkPath + "/ToLua/Lua";

    public static string ProjectPath
    {
        get
        {
            string path = Application.dataPath.ToLower();
            int index = path.LastIndexOf("/");
            return path.Substring(0, index + 1);
        }
    }

    //导出时强制做为静态类的类型(注意customTypeList 还要添加这个类型才能导出)
    //unity 有些类作为sealed class, 其实完全等价于静态类
    public static List<Type> staticClassTypes = new List<Type>
    {
        typeof(UnityEngine.Application),
        typeof(UnityEngine.Time),
        typeof(UnityEngine.Screen),
        typeof(UnityEngine.SleepTimeout),
        typeof(UnityEngine.Input),
        typeof(UnityEngine.Resources),
        typeof(UnityEngine.Physics),
        typeof(UnityEngine.RenderSettings),
        typeof(UnityEngine.QualitySettings),
        typeof(UnityEngine.GL),
    };

    //附加导出委托类型(在导出委托时, customTypeList 中牵扯的委托类型都会导出， 无需写在这里)
    public static DelegateType[] customDelegateList =
    {
        _DT(typeof(Action)),
        _DT(typeof(UnityEngine.Events.UnityAction)),
        _DT(typeof(System.Predicate<int>)),
        _DT(typeof(System.Action<int>)),
        _DT(typeof(System.Comparison<int>)),
#if USING_DOTWEENING
        _DT(typeof(DG.Tweening.TweenCallback)),
        _DT(typeof(DG.Tweening.TweenCallback<GameObject>)),
#endif
    };

    //在这里添加你要导出注册到lua的类型列表
    public static BindType[] customTypeList =
    {                
        //------------------------为例子导出--------------------------------
        //_GT(typeof(TestEventListener)),
        //_GT(typeof(TestProtol)),
        //_GT(typeof(TestAccount)),
        //_GT(typeof(Dictionary<int, TestAccount>)).SetLibName("AccountMap"),
        //_GT(typeof(KeyValuePair<int, TestAccount>)),    
        //_GT(typeof(TestExport)),
        //_GT(typeof(TestExport.Space)),
        //-------------------------------------------------------------------        
                
        _GT(typeof(Debugger)).SetNameSpace(null),        

#if USING_DOTWEENING
        _GT(typeof(DG.Tweening.DOTween)),
        _GT(typeof(DG.Tweening.Tween)).SetBaseType(typeof(System.Object)).AddExtendType(typeof(DG.Tweening.TweenExtensions)),
        _GT(typeof(DG.Tweening.Sequence)).AddExtendType(typeof(DG.Tweening.TweenSettingsExtensions)),
        _GT(typeof(DG.Tweening.Tweener)).AddExtendType(typeof(DG.Tweening.TweenSettingsExtensions)),
        _GT(typeof(DG.Tweening.Core.TweenerCore<Vector3, Vector3, DG.Tweening.Plugins.Options.VectorOptions>)).SetWrapName("TweenerCoreV3V3VO").SetLibName("TweenerCoreV3V3VO"),
        _GT(typeof(DG.Tweening.LoopType)),
        _GT(typeof(DG.Tweening.PathMode)),
        _GT(typeof(DG.Tweening.PathType)),
        _GT(typeof(DG.Tweening.RotateMode)),
        _GT(typeof(DG.Tweening.Ease)),
        _GT(typeof(Component)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Transform)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Light)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Material)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(Rigidbody)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(UnityEngine.UI.Graphic)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions46)),
        _GT(typeof(Camera)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(AudioSource)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        _GT(typeof(RectTransform)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions46)),
        _GT(typeof(UnityEngine.UI.Image)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions46)),
        _GT(typeof(UnityEngine.UI.RawImage)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions46)),
        //_GT(typeof(LineRenderer)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),
        //_GT(typeof(TrailRenderer)).AddExtendType(typeof(DG.Tweening.ShortcutExtensions)),    
#else
        _GT(typeof(Sprite)),                              
        _GT(typeof(Component)),
        _GT(typeof(Transform)),
        _GT(typeof(Material)),
        _GT(typeof(Light)),
        _GT(typeof(Rigidbody)),
        _GT(typeof(Camera)),
        _GT(typeof(AudioSource)),
        _GT(typeof(RectTransform)),
        _GT(typeof(UnityEngine.UI.Image)),
        //_GT(typeof(LineRenderer))
        //_GT(typeof(TrailRenderer))
#endif
      
        _GT(typeof(Behaviour)),
        _GT(typeof(MonoBehaviour)),
        _GT(typeof(GameObject)),
        _GT(typeof(TrackedReference)),
        _GT(typeof(Application)),
        _GT(typeof(Physics)),
        _GT(typeof(Collider)),
        _GT(typeof(Time)),
        _GT(typeof(Texture)),
        _GT(typeof(Texture2D)),
        _GT(typeof(Shader)),
        _GT(typeof(Renderer)),
        _GT(typeof(WWW)),
        _GT(typeof(Sprite)),
        _GT(typeof(Screen)),
        _GT(typeof(CameraClearFlags)),
        _GT(typeof(AudioClip)),
        _GT(typeof(AssetBundle)),
        _GT(typeof(ParticleSystem)),
        _GT(typeof(AsyncOperation)).SetBaseType(typeof(System.Object)),
        _GT(typeof(LightType)),
        _GT(typeof(SleepTimeout)),
#if UNITY_5_3_OR_NEWER
        _GT(typeof(UnityEngine.Experimental.Director.DirectorPlayer)),
#endif
        _GT(typeof(Animator)),
        _GT(typeof(Input)),
        _GT(typeof(KeyCode)),
        _GT(typeof(SkinnedMeshRenderer)),
        _GT(typeof(Space)),


        _GT(typeof(MeshRenderer)),
#if !UNITY_5_4_OR_NEWER
        _GT(typeof(ParticleEmitter)),
        _GT(typeof(ParticleRenderer)),
        _GT(typeof(ParticleAnimator)), 
#endif
                              
        _GT(typeof(BoxCollider)),
        _GT(typeof(MeshCollider)),
        _GT(typeof(SphereCollider)),
        _GT(typeof(CharacterController)),
        _GT(typeof(CapsuleCollider)),

        _GT(typeof(Animation)),
        _GT(typeof(AnimationClip)).SetBaseType(typeof(UnityEngine.Object)),
        _GT(typeof(AnimationState)),
        _GT(typeof(AnimationBlendMode)),
        _GT(typeof(QueueMode)),
        _GT(typeof(PlayMode)),
        _GT(typeof(WrapMode)),

        _GT(typeof(QualitySettings)),
        _GT(typeof(RenderSettings)),
        _GT(typeof(BlendWeights)),
        _GT(typeof(RenderTexture)),
        _GT(typeof(Resources)), 
        
        //for UGUI and EventSystems
        _GT(typeof(UnityEngine.Canvas)),
        _GT(typeof(UnityEngine.CanvasGroup)),
        _GT(typeof(UnityEngine.RenderMode)),
        _GT(typeof(UnityEngine.UI.Button)),
        _GT(typeof(UnityEngine.UI.Toggle)),
        _GT(typeof(UnityEngine.UI.ToggleGroup)),
        _GT(typeof(UnityEngine.UI.ScrollRect)),
        _GT(typeof(UnityEngine.UI.Slider)),
        _GT(typeof(UnityEngine.UI.Text)),
        _GT(typeof(UnityEngine.UI.GridLayoutGroup)),
        _GT(typeof(UnityEngine.UI.HorizontalLayoutGroup)),
        _GT(typeof(UnityEngine.UI.VerticalLayoutGroup)),
        _GT(typeof(UnityEngine.EventSystems.EventSystem)),
        _GT(typeof(UnityEngine.GUILayer)),
        _GT(typeof(UnityEngine.UI.CanvasScaler)),
        _GT(typeof(UnityEngine.EventSystems.StandaloneInputModule)),
        _GT(typeof(UnityEngine.UI.GraphicRaycaster)),
        _GT(typeof(UnityEngine.RectTransform.Edge)),
        _GT(typeof(UnityEngine.UI.CanvasScaler.ScaleMode)),
        _GT(typeof(UnityEngine.UI.CanvasScaler.ScreenMatchMode)),
        _GT(typeof(UnityEngine.EventSystems.PointerEventData)),
        _GT(typeof(UnityEngine.EventSystems.AxisEventData)),
        _GT(typeof(UnityEngine.EventSystems.BaseEventData)),
        
          
        //for LuaFramework

        _GT(typeof(Util)),
        _GT(typeof(AppConst)),
        _GT(typeof(LuaHelper)),
        _GT(typeof(ByteBuffer)),
        _GT(typeof(LuaBehaviour)),

        _GT(typeof(GameManager)),
        _GT(typeof(LuaManager)),
        _GT(typeof(PanelManager)),
        _GT(typeof(SoundManager)),
        _GT(typeof(TimerManager)),
        _GT(typeof(ThreadManager)),
        _GT(typeof(NetworkManager)),
        _GT(typeof(ResourceManager)),
        _GT(typeof(SUIFW.UIManager)),
        _GT(typeof(SUIFW.BaseUIForm)),
        _GT(typeof(SUIFW.LuaUIForm)),
        _GT(typeof(SUIFW.UIType)),

        //for test
        _GT(typeof(LuaFramework.UIEventListener)),
        _GT(typeof(LuaFramework.EventTrigger)),
        //_GT(typeof(LuaFramework.AnimEventListener)),

     };
        


    

    public static List<Type> dynamicList = new List<Type>()
    {
        typeof(MeshRenderer),
#if !UNITY_5_4_OR_NEWER
        typeof(ParticleEmitter),
        typeof(ParticleRenderer),
        typeof(ParticleAnimator),
#endif

        typeof(BoxCollider),
        typeof(MeshCollider),
        typeof(SphereCollider),
        typeof(CharacterController),
        typeof(CapsuleCollider),

        typeof(Animation),
        typeof(AnimationClip),
        typeof(AnimationState),

        typeof(BlendWeights),
        typeof(RenderTexture),
        typeof(Rigidbody),
    };

    //重载函数，相同参数个数，相同位置out参数匹配出问题时, 需要强制匹配解决
    //使用方法参见例子14
    public static List<Type> outList = new List<Type>()
    {
        
    };

    static BindType _GT(Type t)
    {
        return new BindType(t);
    }

    static DelegateType _DT(Type t)
    {
        return new DelegateType(t);
    }    
}
