--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
-- Lua Library inline imports
__TS__Index = function(classProto)
    return function(tbl, key)
        local proto = classProto;
        while true do
            local val = rawget(proto, key);
            if val ~= nil then
                return val;
            end
            local getters = rawget(proto, "____getters");
            if getters then
                local getter = getters[key];
                if getter then
                    return getter(tbl);
                end
            end
            local base = rawget(rawget(proto, "constructor"), "____super");
            if not base then
                break;
            end
            proto = rawget(base, "prototype");
        end
    end;
end;

Gpu = Gpu or {};
Gpu.__index = Gpu;
Gpu.prototype = Gpu.prototype or {};
Gpu.prototype.____getters = {};
Gpu.prototype.__index = __TS__Index(Gpu.prototype);
Gpu.prototype.constructor = Gpu;
Gpu.new = function(...)
    local self = setmetatable({}, Gpu.prototype);
    self:____constructor(...);
    return self;
end;
Gpu.prototype.____constructor = function(self, address)
    if address == nil then
        self._proxy = component.gpu;
    else
        self._proxy = component:proxy(address);
    end
end;
Gpu.prototype.____getters.height = function(self)
    local F;
    F = self._proxy.getResolution;
    local reses = {F()};
    return reses[1 + 1];
end;
Gpu.prototype.____getters.width = function(self)
    local F;
    F = self._proxy.getResolution;
    local reses = {F()};
    return reses[0 + 1];
end;
Gpu.prototype.bind = function(self, screenAdr)
    local bindF;
    bindF = self._proxy.bind;
    bindF(screenAdr);
end;
Gpu.prototype.setResolution = function(self, width, height)
    local setResolutionF;
    setResolutionF = self._proxy.setResolution;
    setResolutionF(width, height);
end;
Gpu.prototype.fill = function(self, x, y, width, height, char)
    local fillF;
    fillF = self._proxy.fill;
    fillF(x, y, width, height, char);
end;
Gpu.prototype.setForeground = function(self, colour)
    local setForegroundF;
    setForegroundF = self._proxy.setForeground;
    setForegroundF(colour);
end;
Gpu.prototype.setBackground = function(self, colour)
    local setBackgroundF;
    setBackgroundF = self._proxy.setBackground;
    setBackgroundF(colour);
end;
