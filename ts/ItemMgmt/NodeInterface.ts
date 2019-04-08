class NodeInterface
{
    //from:Node
    toNodeId:number
    RSaddress:string
    
    constructor(toid:number,rsaddr:string)
    {
        this.toNodeId = toid;
        this.RSaddress = rsaddr;
    }

    public get rsInterface() : RsInterface 
    {
        return component.proxy(this.RSaddress) as RsInterface;
    }
    
}