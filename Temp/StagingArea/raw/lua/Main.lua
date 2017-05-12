--local GameObject = UnityEngine.GameObject

--涓诲叆鍙ｅ嚱鏁般�備粠杩欓噷寮�濮媗ua閫昏緫
function Main()				
    --require("debugger")("127.0.0.1", 10001, "luaidekey")
    LuaFramework.Util.LogWarning('Main Start================================>')
end

--鍦烘櫙鍒囨崲閫氱煡
function OnLevelWasLoaded(level)
	collectgarbage("collect")
	Time.timeSinceLevelLoad = 0
end