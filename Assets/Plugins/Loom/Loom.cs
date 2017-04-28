using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Threading;
//using System.Linq;

/// <summary>
/// 功能：在子线程调用方法，主线程执行。（解决子线程不能调用Unity接口函数）
/// </summary>
public class Loom : MonoBehaviour
{
    public static int maxThreads = 8;
    static int numThreads;

    private static Loom _current;
    private int _count;
    public static Loom Current
    {
        get
        {
            Initialize();
            return _current;
        }
    }

    void Awake()
    {
        _current = this;
        initialized = true;
    }

    static bool initialized;

    static void Initialize()
    {
        if (!initialized)
        {

            if (!Application.isPlaying)
                return;
            initialized = true;
            var g = new GameObject("Loom");
            _current = g.AddComponent<Loom>();
        }

    }

    private List<Action> _actions = new List<Action>();
    public struct DelayedQueueItem
    {
        public float time;
        public Action action;
    }
    private List<DelayedQueueItem> _delayed = new List<DelayedQueueItem>();

    List<DelayedQueueItem> _currentDelayed = new List<DelayedQueueItem>();

    /// <summary>
    /// 让代码在主线程执行
    /// </summary>
    /// <param name="action"></param>
    public static void QueueOnMainThread(Action action)
    {
        QueueOnMainThread(action, 0f);
    }

    ///<summary>
    /// 让代码在主线程执行（time:延时执行）
    /// </summary>
    public static void QueueOnMainThread(Action action, float time)
    {
        if (time != 0)
        {
            lock (Current._delayed)
            {
                Current._delayed.Add(new DelayedQueueItem { time = Time.time + time, action = action });
            }
        }
        else
        {
            lock (Current._actions)
            {
                Current._actions.Add(action);
            }
        }
    }

    /// <summary>
    /// 开启一个新线程，执行一段代码
    /// </summary>
    /// <param name="a"></param>
    /// <returns></returns>
    public static Thread RunAsync(Action a)
    {
        Initialize();
        while (numThreads >= maxThreads)
        {
            Thread.Sleep(1);
        }
        Interlocked.Increment(ref numThreads);
        ThreadPool.QueueUserWorkItem(RunAction, a);
        return null;
    }

    private static void RunAction(object action)
    {
        try
        {
            ((Action)action)();
        }
        catch(Exception e)
        {
            Debug.LogError(e.Message);
        }
        finally
        {
            Interlocked.Decrement(ref numThreads);
        }

    }


    void OnDisable()
    {
        if (_current == this)
        {

            _current = null;
        }
    }



    // Use this for initialization  
    void Start()
    {

    }

    List<Action> _currentActions = new List<Action>();

    // Update is called once per frame  
    void Update()
    {
        //把新加進來的action放進執行列表
        lock (_actions)
        {
            _currentActions.Clear();
            _currentActions.AddRange(_actions);
            _actions.Clear();
        }

        //執行所有被加進來的action
        for (int i = 0; i < _currentActions.Count; i++)
        {
            _currentActions[i]();
        }


        //處理有延時功能的action
        lock (_delayed)
        {
            _currentDelayed.Clear();
           // _currentDelayed.AddRange(_delayed.Where(d => d.time <= Time.time));
           //把執行時間已經到了的action加進執行列表
            for (int i = 0; i < _delayed.Count; i++)
            {
                if (_delayed[i].time <= Time.time)
                {
                    _currentDelayed.Add(_delayed[i]);
                }
            }
            //再把執行時間已經到了的action從等待列表移除
            for (int i = 0; i < _currentDelayed.Count; i++)
            {
                _delayed.Remove(_currentDelayed[i]);
            }
        }

        for (int i = 0; i < _currentDelayed.Count; i++)
        {
            _currentDelayed[i].action();
        }



    }
}