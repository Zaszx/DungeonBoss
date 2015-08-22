package 
{
	import org.flixel.*;
	import org.flixel.FlxG;
	public class Boss extends FlxSprite
	{
		public var speed:Number = 2.0;
		public function Boss() 
		{
			
		}
		
		override public function update():void
		{
			super.update();
			handleInput();
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