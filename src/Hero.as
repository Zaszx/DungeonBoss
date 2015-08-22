package 
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxU;
	import org.flixel.FlxPoint;
	public class Hero extends FlxSprite
	{
		
		public function Hero(x:Number, y:Number) 
		{
			this.x = x;
			this.y = y;
			loadGraphic(Assets._heroImage);
		}
		
		public function lookAt(boss:FlxSprite):void
		{
			var lookAngle:Number = FlxU.getAngle(new FlxPoint(boss.x, boss.y), new FlxPoint(x, y));
			this.angle = lookAngle;
		}
		
	}

}