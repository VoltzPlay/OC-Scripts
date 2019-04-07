require("Page")
class testpage extends Page
{
    draw(): void 
    {
        print(this.gpu.getResolution()[0].toString());
        print(this.gpu.getResolution()[1].toString());
    }
    constructor(gpu:Gpu)
    {
        super(gpu);
        gpu.bind("test");
    }

}