require "System.coroutine"
local SceneManager = UnityEngine.SceneManagement.SceneManager

function loadScene()
    local result = SceneManager.LoadSceneAsync('sceneName')
    --运行到这会被阻塞
    coroutine.www(result)
    --scene加载完成后会执行
    --
end

--启动协程异步加载场景
coroutine.start(loadScene)

function Main()
    local result = SceneManager.LoadSceneAsync('sceneName')
    while not result.isDone do
        print(result.progress)
    end
end