--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("NodeInterface");
Node = Node or {};
Node.__index = Node;
Node.prototype = Node.prototype or {};
Node.prototype.__index = Node.prototype;
Node.prototype.constructor = Node;
Node.new = function(...)
    local self = setmetatable({}, Node.prototype);
    self:____constructor(...);
    return self;
end;
Node.prototype.____constructor = function(self)
end;
