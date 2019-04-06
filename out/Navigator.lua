--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("Page");
Navigator = Navigator or {};
Navigator.__index = Navigator;
Navigator.prototype = Navigator.prototype or {};
Navigator.prototype.__index = Navigator.prototype;
Navigator.prototype.constructor = Navigator;
Navigator.new = function(...)
    local self = setmetatable({}, Navigator.prototype);
    self:____constructor(...);
    return self;
end;
Navigator.prototype.____constructor = function(self)
end;
Navigator.prototype.start = function(self)
    self.gpu:fill(0, 0, self.gpu.height, self.gpu.height, " ");
end;
