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
    gpu:bind(component.screen.address);
end;
testpage.prototype.draw = function(self)
    print(tostring(self.gpu.height));
    print(tostring(self.gpu.width));
end;
