class Item 
{  
    name:string = "minecraft:cobblestone";
    damage:number;
    constructor(name:string, damage:number)
    {
        this.damage = damage;
        this.name = name;
    }
    static cobble = new Item("minecraft:cobblestone",null);
}
