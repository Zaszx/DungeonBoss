package 
{
	import org.flixel.*;
	import org.flixel.FlxG;
	public class Boss extends FlxSprite
	{
		public var speed:Number = 2.0;
		public var health:int = 100;
		public var maxHealth:int = 100;
		
		public function Boss() 
		{
			x = FlxG.width / 2.0;
			y = FlxG.height * 3.0 / 5.0;
		}
		
		override public function update():void
		{
			super.update();
			handleInput();
		}
		
		public function receiveDamage(damage:Number):void
		{
			health = health - damage;
		}
		
		private function handleInput():void
		{
			// Movement
			
			if (FlxG.keys.W || FlxG.keys.UP)
			{
				y -= speed;
			}
			if (FlxG.keys.S || FlxG.keys.DOWN)
			{
				y += speed;
			}
			if (FlxG.keys.A || FlxG.keys.LEFT)
			{
				x -= speed;
			}
			if (FlxG.keys.D || FlxG.keys.RIGHT)
			{
				x += speed;
			}
			
			
			
		}
		
	}

}