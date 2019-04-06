require("Page")
abstract class Navigator
{
    gpu:Gpu;
    pages:Array<Page>;
    start():void
    {
        this.gpu.fill(0,0,this.gpu.height,this.gpu.height," ")
    }
}