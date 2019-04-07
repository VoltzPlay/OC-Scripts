--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("Page");
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
    Page.prototype.____constructor(self, gpu);
    gpu.bind("test");
end;
testpage.prototype.draw = function(self)
    print(tostring(({self.gpu.getResolution()})[0 + 1]));
    print(tostring(({self.gpu.getResolution()})[1 + 1]));
    local testinterface = component.proxy("2c429854-f63e-4c2c-94c1-f20caa9f6433");
    testinterface:extractItem(Item.cobble, 64, north);
end;
