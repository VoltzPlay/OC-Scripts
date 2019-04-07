--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("oc/Gpu");
Page = Page or {};
Page.__index = Page;
Page.prototype = Page.prototype or {};
Page.prototype.__index = Page.prototype;
Page.prototype.constructor = Page;
Page.new = function(...)
    local self = setmetatable({}, Page.prototype);
    self:____constructor(...);
    return self;
end;
Page.prototype.____constructor = function(self, gpu)
    self.cursorX = 0;
    self.cursorY = 0;
    self.gpu = gpu;
end;
Page.prototype.print = function(self, text)
    local temp = self.cursorX;
    do
        local i = 0;
        while i < (#text) do
            do
                local c = string.sub(text, i + 1, i + 1);
                if c == "\n" then
                    self.cursorX = temp;
                    self.cursorY = self.cursorY + 1;
                else
                    self.cursorX = self.cursorX + 1;
                end
            end
            ::__continue3::
            i = i + 1;
        end
    end
end;
