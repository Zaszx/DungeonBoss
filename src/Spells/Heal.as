package Spells 
{
	import org.flixel.*;
	import Heroes.*;
	public class Heal extends Spell
	{
		public function Heal() 
		{
			
		}
		
		override public function start(caster:Hero, target:FlxSprite):void
		{
			if (target is Hero)
			{
				var hero:Hero = target as Hero;
				hero.health += 10;
				if (hero.health > hero.maxHealth)
				{
					hero.health = hero.maxHealth;
				}
			}
		}
	}

}