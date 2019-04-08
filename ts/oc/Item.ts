class Item 
{  
    name:string;
    damage:number;
    constructor(name:string, damage:number)
    {
        this.damage = damage;
        this.name = name;
    }
    //static cobble 
    public static get cobble() : Item {
        return new Item("minecraft:cobblestone",null);
    }
}
class ItemStack extends Item
{
    size : number
}
