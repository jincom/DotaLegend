using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class TestDoTween : MonoBehaviour
{
    private RectTransform rt;
    public void Hello()
    {
       Tweener tweener = rt.DOAnchorPos(new Vector2(1, 2), 1, false).From(); 
        Transform t = null;
        // t.DOLocalMoveY(1,1).From();
        tweener.Pause();
        tweener.IsPlaying();
        Debug.Log("Hello.....");
        Tweener tweener1 = t.DOLocalMove(Vector3.one, 0);
        TweenCallback callback;
        RawImage image;
    }
}
