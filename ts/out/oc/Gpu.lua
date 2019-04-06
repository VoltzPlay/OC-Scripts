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
    local reses = {(function()
        local ____TS_self = self._proxy;
        return ____TS_self.getResolution(____TS_self);
    end)()};
    return reses[1 + 1];
end;
Gpu.prototype.____getters.width = function(self)
    local reses = {(function()
        local ____TS_self = self._proxy;
        return ____TS_self.getResolution(____TS_self);
    end)()};
    return reses[0 + 1];
end;
Gpu.prototype.bind = function(self, screenAdr)
    (function()
        local ____TS_self = self._proxy;
        return ____TS_self.bind(____TS_self, screenAdr);
    end)();
end;
Gpu.prototype.setResolution = function(self, width, height)
    (function()
        local ____TS_self = self._proxy;
        return ____TS_self.setResolution(____TS_self, width, height);
    end)();
end;
Gpu.prototype.fill = function(self, x, y, width, height, char)
    (function()
        local ____TS_self = self._proxy;
        return ____TS_self.fill(____TS_self, x, y, width, height, char);
    end)();
end;
Gpu.prototype.setForeground = function(self, colour)
    (function()
        local ____TS_self = self._proxy;
        return ____TS_self.setForeground(____TS_self, colour);
    end)();
end;
Gpu.prototype.setBackground = function(self, colour)
    (function()
        local ____TS_self = self._proxy;
        return ____TS_self.setBackground(____TS_self, colour);
    end)();
end;
