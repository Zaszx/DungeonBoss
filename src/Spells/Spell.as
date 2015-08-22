package Spells
{
	import org.flixel.FlxSprite;
	public class Spell 
	{
		public var timeToCast:Number;
		public function Spell() 
		{
			
		}
		
		public function start(caster:Hero, target:FlxSprite):void
		{
			throw("Yazacagin koda sokiyim: pure virtual function call");
		}
		
	}

}