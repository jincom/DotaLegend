using System;
using UnityEngine;
//using LuaInterface;
//using UnityEngine.Events;
using System.Collections.Generic;

namespace LuaFramework
{
    [RequireComponent(typeof(Animator))]
    public class AnimEventListener : MonoBehaviour
    {

        private Animator animator;

        private Dictionary<string, AnimEvent> eventsMap;

        public delegate void ObjectDelegate(object arg0);

        public class AnimEvent
        {
            public object arg0;
            private event ObjectDelegate m_animEvent;
            public AnimEvent(object arg0, ObjectDelegate callback)
            {
                this.arg0 = arg0;
                m_animEvent += callback;
            }

            public void Invoke()
            {
                Invoke(arg0);
            }

            public void Invoke(object arg)
            {
                if (m_animEvent != null)
                {
                    m_animEvent(arg);
                }
            }

            public void AddListener(ObjectDelegate callback)
            {
                m_animEvent += callback;
            }

            public void RemoveListener(ObjectDelegate callback)
            {
                m_animEvent -= callback;
            }

            public void RemoveAllListeners()
            {
                m_animEvent = null;
            }

        }

        public static AnimEventListener Get(GameObject go)
        {
            if (go == null)
                return null;

            AnimEventListener listener = go.GetComponent<AnimEventListener>();

            if (listener == null)
                listener = go.AddComponent<AnimEventListener>();
            return listener;
        }


        public bool AddEvent(string animName, float time, ObjectDelegate callback)
        {

            AnimationClip[] clips = animator.runtimeAnimatorController.animationClips;
            AnimationClip target = null;

            for (int i = 0; i < clips.Length; i++)
            {
                if (animName == clips[i].name)
                {
                    target = clips[i];
                    break;
                }
            }
            if (target == null)
                return false;

            AnimEvent eventParam = null;
            string animEventName = string.Format("{0}_{1}", animName, time.ToString());
            if (!eventsMap.TryGetValue(animEventName, out eventParam))
            {
                AnimationEvent animEvent = new AnimationEvent();
                animEvent.time = time;
                animEvent.functionName = "OnAnimEvent";
                animEvent.stringParameter = animEventName;
                eventParam = new AnimEvent(animEvent, callback);

                eventsMap[animEventName] = eventParam;

                target.AddEvent(animEvent);
            }
            else
            {
                eventParam.AddListener(callback);
            }
            return true;
        }

        public void RemoveEvent()
        {

        }

        void Awake()
        {
            animator = GetComponent<Animator>();
            eventsMap = new Dictionary<string, AnimEvent>();
        }

        public void OnAnimEvent(AnimationEvent animEvent)
        {
            if (animEvent == null) return;
            AnimEvent eventParam = null;

            if (eventsMap.TryGetValue(animEvent.stringParameter, out eventParam))
            {
                eventParam.Invoke();
            }

        }

    }
}
