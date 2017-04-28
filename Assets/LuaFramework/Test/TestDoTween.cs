using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class TestDoTween
{
    private RectTransform rt;
    public void Hello()
    {
        rt.DOAnchorPos(new Vector2(1, 2), 1, false).From(); 
        Transform t;
       // t.DOLocalMoveY(1,1).From();
        Debug.Log("Hello.....");
    }
}
