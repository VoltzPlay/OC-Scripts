require("oc/Gpu")
abstract class Page 
{ 
    cursorX:number = 0;
    cursorY:number = 0;

    gpu:Gpu;


    constructor(gpu:Gpu) 
    { 
        this.gpu = gpu;
    }
    abstract draw():void
    print(text:string):void
    {
        let temp = this.cursorX;
        for (let i = 0; i < text.length; i++) 
        {
            const c = text[i];
            if (c == '\n')
		    {
                this.cursorX = temp;
			    this.cursorY = this.cursorY + 1;
            } 

            else
            {
                this.gpu.fill(this.cursorX, this.cursorY,1,1, c);
			    this.cursorX = this.cursorX + 1;
            }
        }
    }
}