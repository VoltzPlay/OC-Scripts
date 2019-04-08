--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("Page");
require("oc/Item");
require("Config");
require("ItemMgmt/Node");
side = require("sides");
testpage = testpage or {};
testpage.__index = testpage;
testpage.prototype = testpage.prototype or {};
testpage.prototype.__index = testpage.prototype;
testpage.prototype.constructor = testpage;
testpage.____super = Page;
setmetatable(testpage, testpage.____super);
setmetatable(testpage.prototype, testpage.____super.prototype);
testpage.new = function(...)
    local self = setmetatable({}, testpage.prototype);
    self:____constructor(...);
    return self;
end;
testpage.prototype.____constructor = function(self, gpu)
    self.config = Config.new();
    Page.prototype.____constructor(self, gpu);
    gpu.bind("test");
end;
testpage.prototype.draw = function(self)
    print(tostring(({self.gpu.getResolution()})[0 + 1]));
    print(tostring(({self.gpu.getResolution()})[1 + 1]));
    self.config.nodes[0 + 1].interfaces[0 + 1].rsInterface.extractItem(Item.cobble, 64, side.top);
end;
testpage.prototype.printItem = function(self, item)
    for i in pairs(item) do
        do
            print((i .. ":") .. item[i]);
        end
        ::__continue4::
    end
end;
