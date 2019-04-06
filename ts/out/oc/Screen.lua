--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
Screen = Screen or {};
Screen.__index = Screen;
Screen.prototype = Screen.prototype or {};
Screen.prototype.__index = Screen.prototype;
Screen.prototype.constructor = Screen;
Screen.new = function(...)
    local self = setmetatable({}, Screen.prototype);
    self:____constructor(...);
    return self;
end;
Screen.prototype.____constructor = function(self, address)
    if address == nil then
        self._proxy = component.screen;
    else
        self._proxy = component:proxy(address);
    end
end;
