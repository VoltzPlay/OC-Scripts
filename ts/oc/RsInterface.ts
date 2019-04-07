declare abstract class RsInterface extends CoProxy
{
    getItems():Item[];
    getItem(item:Item);
    extractItem(item:Item, amount:number, side:number)
}