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
        let bindF:(this:void, screenAdr:string) => void;
        bindF = this._proxy["bind"]; 
        bindF(screenAdr);
    }
    setResolution(width:number, height:number):void
    {
        let setResolutionF:(this:void, width:number, height:number) => void;
        setResolutionF = this._proxy["setResolution"]; 
        setResolutionF(width,height);
    }
    fill(x:number, y:number, width:number, height:number,char:string):void
    {
        let fillF:(this:void, x:number, y:number, width:number, height:number,char:string) => void;
        fillF = this._proxy["fill"];
        fillF(x,y,width,height,char);
    }
    setForeground(colour:number):void
    {
        let setForegroundF:(this:void, colour:number) => void;
        setForegroundF = this._proxy["setForeground"];
        setForegroundF(colour);
    }
    setBackground(colour:number):void
    {
        let setBackgroundF:(this:void, colour:number) => void;
        setBackgroundF = this._proxy["setBackground"];
        setBackgroundF(colour);
    }


    get height() : number
    {
        let F:(this:void) => number;
        F = this._proxy["getResolution"];
        let reses:number[] = [F()];
        return reses[1];
    }
    get width() : number
    {
        let F:(this:void) => number;
        F = this._proxy["getResolution"];
        let reses:number[] = [F()];
        return reses[0];
    }
}