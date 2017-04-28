using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace LuaFramework
{
    public class ObjectPool<T> where T : class
    {
        //存放對象的棧
        private readonly Stack<T> m_Stack = new Stack<T>();
        //獲取object時的回調函數
        private readonly UnityAction<T> m_ActionOnGet;
        //釋放object時的回調函數
        private readonly UnityAction<T> m_ActionOnRelease;

        public int countAll { get; private set; }
        public int countActive { get { return countAll - countInactive; } }
        public int countInactive { get { return m_Stack.Count; } }

        //構造函數
        public ObjectPool(UnityAction<T> actionOnGet, UnityAction<T> actionOnRelease)
        {
            m_ActionOnGet = actionOnGet;
            m_ActionOnRelease = actionOnRelease;
        }

        public T Get()
        {
            T element = m_Stack.Pop();
            if (m_ActionOnGet != null)
                m_ActionOnGet(element);
            return element;
        }

        public void Release(T element)
        {
            if (m_Stack.Count > 0 && ReferenceEquals(m_Stack.Peek(), element))
                Debug.LogError("Internal error. Trying to destroy object that is already released to pool.");

            if (m_ActionOnRelease != null)
                m_ActionOnRelease(element);
            m_Stack.Push(element);
        }
    }
}
