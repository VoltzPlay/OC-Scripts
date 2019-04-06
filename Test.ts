
declare function print(this: void,text:string):void;
declare function require(this: void,text:string);
var component = require("component");
require("Testpage")
function main()
{
    let page:Page = new testpage(new Gpu(null))
    page.draw();
}
main();