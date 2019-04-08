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

NodeInterface = NodeInterface or {};
NodeInterface.__index = NodeInterface;
NodeInterface.prototype = NodeInterface.prototype or {};
NodeInterface.prototype.____getters = {};
NodeInterface.prototype.__index = __TS__Index(NodeInterface.prototype);
NodeInterface.prototype.constructor = NodeInterface;
NodeInterface.new = function(...)
    local self = setmetatable({}, NodeInterface.prototype);
    self:____constructor(...);
    return self;
end;
NodeInterface.prototype.____constructor = function(self, toid, rsaddr)
    self.toNodeId = toid;
    self.RSaddress = rsaddr;
end;
NodeInterface.prototype.____getters.rsInterface = function(self)
    return component.proxy(self.RSaddress);
end;
