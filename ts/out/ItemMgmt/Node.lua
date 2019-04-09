--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("ItemMgmt/NodeInterface");
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
Node.prototype.____constructor = function(self, id, name, interfaces)
    self.id = id;
    self.interfaces = interfaces;
    self.name = name;
end;
Node.prototype.countItems = function(self, item)
    if item == nil then
        print("Item null");
        return;
    end
    if self.interfaces == nil then
        print("Interfaces null");
        return;
    end
    local ItemStack = item;
    print(self.interfaces);
    if self.interfaces[0 + 1] == nil then
        ItemStack.size = 0;
        return;
    end
    ItemStack.size = self.interfaces[0 + 1].rsInterface.getItem(item).size;
end;
