//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from: Proto/WXData.proto
namespace Proto.WXData
{
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"WXToken")]
  public partial class WXToken : global::ProtoBuf.IExtensible
  {
    public WXToken() {}
    
    private string _access_token;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"access_token", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string access_token
    {
      get { return _access_token; }
      set { _access_token = value; }
    }

    private int _expires_in = default(int);
    [global::ProtoBuf.ProtoMember(2, IsRequired = false, Name=@"expires_in", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    [global::System.ComponentModel.DefaultValue(default(int))]
    public int expires_in
    {
      get { return _expires_in; }
      set { _expires_in = value; }
    }

    private string _refresh_token = "";
    [global::ProtoBuf.ProtoMember(3, IsRequired = false, Name=@"refresh_token", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string refresh_token
    {
      get { return _refresh_token; }
      set { _refresh_token = value; }
    }
    private string _openid;
    [global::ProtoBuf.ProtoMember(4, IsRequired = true, Name=@"openid", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string openid
    {
      get { return _openid; }
      set { _openid = value; }
    }

    private string _scope = "";
    [global::ProtoBuf.ProtoMember(5, IsRequired = false, Name=@"scope", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string scope
    {
      get { return _scope; }
      set { _scope = value; }
    }

    private string _unionid = "";
    [global::ProtoBuf.ProtoMember(6, IsRequired = false, Name=@"unionid", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string unionid
    {
      get { return _unionid; }
      set { _unionid = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"WXError")]
  public partial class WXError : global::ProtoBuf.IExtensible
  {
    public WXError() {}
    
    private int _errcode;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"errcode", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int errcode
    {
      get { return _errcode; }
      set { _errcode = value; }
    }

    private string _errmsg = "";
    [global::ProtoBuf.ProtoMember(2, IsRequired = false, Name=@"errmsg", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string errmsg
    {
      get { return _errmsg; }
      set { _errmsg = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"WXUserInfo")]
  public partial class WXUserInfo : global::ProtoBuf.IExtensible
  {
    public WXUserInfo() {}
    
    private string _openid;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"openid", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string openid
    {
      get { return _openid; }
      set { _openid = value; }
    }
    private string _nickname;
    [global::ProtoBuf.ProtoMember(2, IsRequired = true, Name=@"nickname", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string nickname
    {
      get { return _nickname; }
      set { _nickname = value; }
    }

    private int _sex = default(int);
    [global::ProtoBuf.ProtoMember(3, IsRequired = false, Name=@"sex", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    [global::System.ComponentModel.DefaultValue(default(int))]
    public int sex
    {
      get { return _sex; }
      set { _sex = value; }
    }

    private string _province = "";
    [global::ProtoBuf.ProtoMember(4, IsRequired = false, Name=@"province", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string province
    {
      get { return _province; }
      set { _province = value; }
    }

    private string _city = "";
    [global::ProtoBuf.ProtoMember(5, IsRequired = false, Name=@"city", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string city
    {
      get { return _city; }
      set { _city = value; }
    }

    private string _country = "";
    [global::ProtoBuf.ProtoMember(6, IsRequired = false, Name=@"country", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string country
    {
      get { return _country; }
      set { _country = value; }
    }

    private string _headimgurl = "";
    [global::ProtoBuf.ProtoMember(7, IsRequired = false, Name=@"headimgurl", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string headimgurl
    {
      get { return _headimgurl; }
      set { _headimgurl = value; }
    }
    private readonly global::System.Collections.Generic.List<string> _privilege = new global::System.Collections.Generic.List<string>();
    [global::ProtoBuf.ProtoMember(8, Name=@"privilege", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public global::System.Collections.Generic.List<string> privilege
    {
      get { return _privilege; }
    }
  
    private string _unionid;
    [global::ProtoBuf.ProtoMember(9, IsRequired = true, Name=@"unionid", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public string unionid
    {
      get { return _unionid; }
      set { _unionid = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
}