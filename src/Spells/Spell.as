package Spells
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	public class Spell 
	{
		public var timeToCast:Number;
		public var damage:Number;
		public var sprite:FlxSprite;
		public var speed:Number;
		public function Spell() 
		{
			
		}
		
		public function start(caster:Hero, target:FlxSprite):void
		{
			throw("Yazacagin koda sokiyim: pure virtual function call");
		}
		
	}

}