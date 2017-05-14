local UE = UnityEngine
local Screen = UE.Screen

------------lua主程序入口--------------------------------------------
function Main()
	UpdateBeat:Add(onScreenChange)
    LuaFramework.Util.LogWarning('Main Start=====================>')
end

------------场景加载完毕----------------------------------------------
function OnLevelWasLoaded(level)
	collectgarbage("collect")
	Time.timeSinceLevelLoad = 0
end

-----------监听Screen改变事件-----------------------------------------
OnScreenChange = event('OnScreenChange', true)
local is_change = false
local pre_screen_w = Screen.width
local pre_screen_h = Screen.height
function onScreenChange()

	if pre_screen_w ~= Screen.width then
		is_change = true
		pre_screen_w = Screen.width
	end
	if pre_screen_h ~= Screen.height then
		is_change = true
		pre_screen_h = Screen.height
	end
	if is_change then
		is_change = false
		OnScreenChange(pre_screen_w, pre_screen_h)
	end
end