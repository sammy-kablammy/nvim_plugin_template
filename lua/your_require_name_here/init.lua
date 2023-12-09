-- code inside of this file will be run when the plugin is require()'d

print("plugin has just been required()'d!!! hooray!!!")

local M = {}

M.setup = function()
    print('setting up your custom plugin')
end

M.foo = function()
    print('foo')
end

M.bar = function()
    print('bar')
end

return M
