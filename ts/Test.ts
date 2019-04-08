
declare function print(this: void,object:any):void;
declare function require(this: void,text:string);
var component:Component = require("component");
require("TestPage")
function main()
{
    let page:Page = new testpage(component.gpu)
    page.draw();
}
main();