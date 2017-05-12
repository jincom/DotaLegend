using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using LuaFramework;
using DG.Tweening;

public class TestLayout : MonoBehaviour {
    int count = 0;
    public float[] Offset;
    private bool tween;
    private float speed;
    private float bilv;
    public RectTransform[] Layers;
    public EventTrigger trigger;
    private float tweenTime = 0f;
    public float MaxTweenTime = 0.5f;


    private float location;

	// Use this for initialization
	void Start () {

        tween = false;
        count = Layers.Length;
        trigger = gameObject.AddComponent<EventTrigger>();
        trigger.onDrag += OnDrag;
        trigger.onEndDrag += OnEndDrag;
        speed = 0f;
        location = 0f;
        float b = (float)Screen.width / Screen.height;
        float a = 1055f / 615f;
        bilv = (b - a) / a * Screen.width;
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (tween)
        {
            tweenTime += Time.deltaTime;
            if (tweenTime <= MaxTweenTime)
            {
                float offset = (speed / (Offset[0] - bilv)) * (1 - tweenTime / MaxTweenTime);
                location += offset;
                SetPostion(location);
            }
            else
            {
                tween = false;
            }
        }
	}

    private void OnDrag(GameObject go, UnityEngine.EventSystems.PointerEventData data)
    {
        tween = false;
        tweenTime = 0f;
        location += (data.delta.x / (Offset[0] - bilv));
        SetPostion(location);
    }

    private void OnEndDrag(GameObject go, UnityEngine.EventSystems.PointerEventData data)
    {
        speed = data.delta.x;
        tween = true;  
    }

    private void SetPostion(float location)
    {
        this.location = Mathf.Clamp(location, -1f, 0f);
        for (int i = 0; i < count; i++)
        {
            
            Layers[i].anchoredPosition = new Vector2(this.location * (Offset[i] - bilv), 0f);
        }
    }
}
