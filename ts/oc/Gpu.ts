/** @noSelf */
declare abstract class Gpu //extends CoProxy
{
    bind(screenAdr:string):void
    
    /** @tupleReturn */
    getResolution():number[]

    setResolution(width:number, height:number):void

    setForeground(colour:number):void

    setBackground(colour:number):void

    fill(x:number,y:number,height:number,width:number,char:string):void

}