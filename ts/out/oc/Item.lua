--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
Item = Item or {};
Item.__index = Item;
Item.prototype = Item.prototype or {};
Item.prototype.__index = Item.prototype;
Item.prototype.constructor = Item;
Item.new = function(...)
    local self = setmetatable({}, Item.prototype);
    self:____constructor(...);
    return self;
end;
Item.prototype.____constructor = function(self, name, damage)
    self.damage = damage;
    self.name = name;
end;
Item.cobble = Item.new("minecraft:cobblestone", nil);
