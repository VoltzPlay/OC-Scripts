--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
-- Lua Library inline imports
__TS__ClassIndex = function(classTable, key)
    while true do
        local getters = rawget(classTable, "____getters");
        if getters then
            local getter;
            getter = getters[key];
            if getter then
                return getter(classTable);
            end
        end
        classTable = rawget(classTable, "____super");
        if not classTable then
            break;
        end
        local val = rawget(classTable, key);
        if val ~= nil then
            return val;
        end
    end
end;

Item = Item or {};
Item.____getters = {};
Item.__index = Item;
Item.prototype = Item.prototype or {};
Item.prototype.__index = Item.prototype;
Item.prototype.constructor = Item;
setmetatable(Item, {__index = __TS__ClassIndex});
Item.new = function(...)
    local self = setmetatable({}, Item.prototype);
    self:____constructor(...);
    return self;
end;
Item.prototype.____constructor = function(self, name, damage)
    self.damage = damage;
    self.name = name;
end;
Item.____getters.cobble = function(self)
    return Item.new("minecraft:cobblestone", nil);
end;
ItemStack = ItemStack or {};
ItemStack.__index = ItemStack;
ItemStack.prototype = ItemStack.prototype or {};
ItemStack.prototype.__index = ItemStack.prototype;
ItemStack.prototype.constructor = ItemStack;
ItemStack.____super = Item;
setmetatable(ItemStack, {__index = __TS__ClassIndex});
setmetatable(ItemStack.prototype, ItemStack.____super.prototype);
ItemStack.new = function(...)
    local self = setmetatable({}, ItemStack.prototype);
    self:____constructor(...);
    return self;
end;
