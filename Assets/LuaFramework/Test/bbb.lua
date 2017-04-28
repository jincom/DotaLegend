package.path = package.path..';D:/Unity Project/PenghuClient/Assets/LuaFramework/Test/?.lua'
--print(package.path)
ccc = loadfile ("LuaFramework/Test/aaa.lua")
eee = require('aaa')

_mt = {}
print(_ENV)

--print('my name is '..aaa.name)
--print(package.loaded['aaa'])
print(ccc)
print(eee)