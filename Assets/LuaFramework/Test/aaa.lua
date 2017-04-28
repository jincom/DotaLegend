local MODULE_NAME = ...

local M = {}
M.name = 'wocaonima'

_G[MODULE_NAME] = M
package.loaded[MODULE_NAME] = M

print(select('#',MODULE_NAME))
print(select(1, MODULE_NAME))
