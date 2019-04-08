--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
Config = Config or {};
Config.__index = Config;
Config.prototype = Config.prototype or {};
Config.prototype.__index = Config.prototype;
Config.prototype.constructor = Config;
Config.new = function(...)
    local self = setmetatable({}, Config.prototype);
    self:____constructor(...);
    return self;
end;
Config.prototype.____constructor = function(self)
    self.nodes = {{id = 1, name = "test", interfaces = {NodeInterface.new(2, "cfa99835-f5b3-40c8-a878-d8d3973f6924")}}, {id = 2, name = "test2", interfaces = {NodeInterface.new(1, "04b15a03-2f3e-4fe9-94df-cd6f501b9b00")}}};
end;
