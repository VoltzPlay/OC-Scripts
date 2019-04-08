require("Page")
require("oc/Item")
require("Config")
require("ItemMgmt/Node")
let side : Side = require("sides")
class testpage extends Page
{
    config:Config = new Config();
    draw(): void
    {
        print(this.gpu.getResolution()[0].toString());
        print(this.gpu.getResolution()[1].toString());
        this.config.nodes[0].interfaces[0].rsInterface.extractItem(Item.cobble,64,side.Top);
    }
    constructor(gpu:Gpu)
    {
        super(gpu);
        gpu.bind("test");
    }
    printItem(item:Item)
    {
        for (let i in item) 
        {
            print(i + ":" + item[i]);
        }
         
    }
}