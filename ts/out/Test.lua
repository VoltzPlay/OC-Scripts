--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
component = require("component");
require("TestPage");
main = function(self)
    local page = testpage.new(component.gpu);
    page:draw();
end;
main(_G);
