require("Page")
class testpage extends Page
{
    draw(): void
    {
        print(this.gpu.getResolution()[0].toString());
        print(this.gpu.getResolution()[1].toString());
        var testinterface:RsInterface = component.proxy("2c429854-f63e-4c2c-94c1-f20caa9f6433") as RsInterface
        testinterface.extractItem(Item.cobble,64, north);
    }
    constructor(gpu:Gpu)
    {
        super(gpu);
        gpu.bind("test");
    }
}