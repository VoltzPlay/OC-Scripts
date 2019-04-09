class Config
{
    nodes:Node[]
    constructor()
    {
        this.nodes = 
        [
            new Node(1,"test", [new NodeInterface(2,"cfa99835-f5b3-40c8-a878-d8d3973f6924")]),
            new Node(2,"test2", [new NodeInterface(1,"04b15a03-2f3e-4fe9-94df-cd6f501b9b00")])
        ];
    }
}