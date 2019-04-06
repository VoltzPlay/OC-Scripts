class Gpu 
{
    private _proxy;
    constructor(address:string)
    {
        if(address == null)
        {
            this._proxy = component.gpu;
        }
        else
        {
            this._proxy = component.proxy(address);
        }
        
    }
    bind(screenAdr:string):void
    {
        this._proxy["bind"](screenAdr);
    }
    setResolution(width:number, height:number):void
    {
        this._proxy["setResolution"](width,height);
    }
    fill(x:number, y:number, width:number, height:number,char:string):void
    {
        this._proxy["fill"](x,y,width,height,char);
    }
    setForeground(colour:number):void
    {
        this._proxy["setForeground"](colour);
    }
    setBackground(colour:number):void
    {
        this._proxy["setBackground"](colour);
    }
    get height() : number
    {
        let reses:number[] = [this._proxy["getResolution"]()];
        return reses[1];
    }
    get width() : number
    {
        let reses:number[] = [this._proxy["getResolution"]()];
        return reses[0];
    }
}