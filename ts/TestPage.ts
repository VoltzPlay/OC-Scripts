require("Page")
class testpage extends Page
{
    draw(): void 
    {
        print(this.gpu.height.toString());
        print(this.gpu.width.toString());
    }
    constructor(gpu:Gpu)
    {
        super(gpu);
        gpu.bind(component.screen.address);
    }

}