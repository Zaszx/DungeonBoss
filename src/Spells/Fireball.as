package Spells
{
	import org.flixel.*;
	public class Fireball extends Spell
	{
		
		public function Fireball() 
		{
			timeToCast = 3.0;
			damage = 10.0;
			speed = 400.0;
		}
		
		override public function start(caster:Hero, target:FlxSprite):void
		{
			sprite = new FlxSprite(caster.x, caster.y);
			var direction:FlxPoint = FlxPoint.direction(caster.getPosition(), target.getPosition());
			direction.normalize();
			
			sprite.velocity.x = direction.x * speed;
			sprite.velocity.y = direction.y * speed;
		}
	}

}