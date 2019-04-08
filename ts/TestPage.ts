require("Page")
require("oc/Item")
class testpage extends Page
{
    draw(): void
    {
        print(this.gpu.getResolution()[0].toString());
        print(this.gpu.getResolution()[1].toString());
        var testinterface:RsInterface = component.proxy("d38c8ab8-defd-4089-8801-41df7308980f") as RsInterface
        testinterface.extractItem(Item.cobble,64, west);
        //this.printItem(Item.cobble);
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