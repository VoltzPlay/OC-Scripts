class Screen 
{
    private _proxy;
    constructor(address:string)
    {
        if(address == null)
        {
            this._proxy = component.screen;
        }
        else
        {
            this._proxy = component.proxy(address);
        }
        
        
    }


}