--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
ItemLedgerEntry = ItemLedgerEntry or {};
ItemLedgerEntry.__index = ItemLedgerEntry;
ItemLedgerEntry.prototype = ItemLedgerEntry.prototype or {};
ItemLedgerEntry.prototype.__index = ItemLedgerEntry.prototype;
ItemLedgerEntry.prototype.constructor = ItemLedgerEntry;
ItemLedgerEntry.____super = ItemStack;
setmetatable(ItemLedgerEntry, {__index = __TS__ClassIndex});
setmetatable(ItemLedgerEntry.prototype, ItemLedgerEntry.____super.prototype);
ItemLedgerEntry.new = function(...)
    local self = setmetatable({}, ItemLedgerEntry.prototype);
    self:____constructor(...);
    return self;
end;
