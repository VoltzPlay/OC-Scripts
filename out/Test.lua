--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
component = require("component");
require("Testpage");
main = function(self)
    local page = testpage.new(Gpu.new(nil));
    page:draw();
end;
main(_G);
