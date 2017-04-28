using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TestWWWDownTexture : MonoBehaviour {
    public Image image;
	// Use this for initialization
	void Start () {
        StartCoroutine(download());
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    IEnumerator download()
    {
        WWW www = new WWW("http://wx.qlogo.cn/mmopen/uchmtWQh7iaoJ3pfAhtfwpEym1CAedibbovicVzIaJrt0EicZ7lYicfhDoEibic3pvAiaCk33yV3lgkrDMVIc4pexIT19FactHcdmgqk/0");
        yield return www;

        if (www.texture == null) { Debug.Log("texture is null"); }
        Debug.Log(www.bytes.Length);
        Sprite s = Sprite.Create(www.texture, new Rect(0,0,www.texture.width,www.texture.height), Vector2.zero);
        image.sprite = s;
        
    }
}
