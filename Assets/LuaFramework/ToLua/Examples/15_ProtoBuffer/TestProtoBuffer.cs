#define USE_PROTOBUF_NET
using UnityEngine;
using System.Collections;
using LuaInterface;
using System;
using System.IO;
using LuaFramework;
#if USE_PROTOBUF_NET
using ProtoBuf;

[ProtoContract]
class Person
{
    [ProtoMember(1, IsRequired = true)]
    public int id { get; set; }

    [ProtoMember(2, IsRequired = true)]
    public string name { get; set; }

    [ProtoMember(3, IsRequired = false)]
    public string email { get; set; }
}

#endif

public class TestProtoBuffer : LuaClient
{
    private string script = @"      
        local user_pb = require 'Protol.user_pb'
       
        function Decoder()  
            local msg = user_pb.User()
            msg:ParseFromString(TestProtol.data)
            print('user_pb decoder: '..tostring(msg))
        end

        function Encoder()                           
            local msg = user_pb.User()
            msg.id = 10086
            msg.name = 'wangbaichuan'                                   
            local pb_data = msg:SerializeToString()
            TestProtol.data = pb_data
        end
        ";

    private string tips = "";

    //实际应用如Socket.Send(LuaStringBuffer buffer)函数发送协议, 在lua中调用Socket.Send(pb_data)
    //读取协议 Socket.PeekMsgPacket() {return MsgPacket}; lua 中，取协议字节流 MsgPack.data 为 LuaStringBuffer类型
    //msg = Socket.PeekMsgPacket() 
    //pb_data = msg.data    
    new void Awake()
    {
#if UNITY_5		
        Application.logMessageReceived += ShowTips;
#else
        Application.RegisterLogCallback(ShowTips);
#endif  
        base.Awake();            
    }

    protected override LuaFileUtils InitLoader()
    {
        return new LuaResLoader();
    }

    protected override void Bind()
    {
        base.Bind();

        luaState.BeginModule(null);
        TestProtolWrap.Register(luaState);
        luaState.EndModule();
        luaState.AddSearchPath(Application.dataPath + "/Luaframework/ToLua/Examples/15_ProtoBuffer");
    }

    //屏蔽，例子不需要运行
    protected override void CallMain() { }

    protected override void OnLoadFinished()
    {                
        base.OnLoadFinished();
        luaState.DoFile("user_pb");
        luaState.DoString(script, "TestProtoBuffer.cs");

#if !USE_PROTOBUF_NET
        LuaFunction func = luaState.GetFunction("Encoder");
        func.Call();
        func.Dispose();        

        func = luaState.GetFunction("Decoder");
        func.Call();
        func.Dispose();
        func = null;
#else
        Person data = new Person();
        data.id = 2048;
        data.name = "foo";
        data.email = "bar";
        MemoryStream stream = new MemoryStream();
        Serializer.Serialize<Person>(stream, data);
        byte[] buffer = stream.ToArray();

        //TestProtol.data = new LuaByteBuffer(buffer);
        TestProtol.data = buffer;

        LuaFunction func = luaState.GetFunction("Decoder");
        func.Call();
        func.Dispose();
        func = null;

        func = luaState.GetFunction("Encoder");
        func.Call();
        func.Dispose();
        func = null;

        //stream = new MemoryStream(TestProtol.data.buffer);
        stream = new MemoryStream(TestProtol.data);
        data = Serializer.Deserialize<Person>(stream);
        Debugger.Log("Decoder from lua fixed64 is: {0}", data.id);
#endif
    }

    void ShowTips(string msg, string stackTrace, LogType type)
    {
        tips = tips + msg + "\r\n";
    }

    void OnGUI()
    {
        GUI.Label(new Rect(Screen.width / 2 - 200, Screen.height / 2 - 100, 400, 300), tips);
    }

    new void OnApplicationQuit()
    {
        base.Destroy();
#if UNITY_5
        Application.logMessageReceived -= ShowTips;
#else
        Application.RegisterLogCallback(null);
#endif
    }
}
