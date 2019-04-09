/** @noSelf */
declare abstract class RsInterface extends CoProxy
{
    getItems():Item[];
    getItem(item:Item):ItemStack;
    extractItem(item:Item, amount:number, side:number)
}