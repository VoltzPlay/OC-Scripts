require("ItemMgmt/NodeInterface")
require("ItemMgmt/ItemLedgerEntry")
class Node
{
    //id:number;
    name:string;
    interfaces:NodeInterface[];
    constructor(id:number,name:string,interfaces:NodeInterface[])
    {
        //this.id = id;
        this.interfaces = interfaces;
        this.name = name;
    }
    countItems(item:Item) : void
    {
        if(item == null)
        {
            print("Item null");
            return;
        }
        if(this.interfaces == null)
        {
            print("Interfaces null");
            return;
        }
        let ItemStack = item as ItemStack;
        print(this.interfaces);
        print(this.interfaces.length);
        if(this.interfaces[0] == null)
        {
            ItemStack.size = 0;
            return;
        }
        print(this.interfaces[0].rsInterface);
        print(this.interfaces[0].rsInterface.getItem);
        print(this.interfaces[0].rsInterface.getItem(item).size);
        ItemStack.size = this.interfaces[0].rsInterface.getItem(item).size;
    }
}