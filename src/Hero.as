package 
{
	import Decisions.*; 
	import org.flixel.FlxSprite;
	import org.flixel.FlxU;
	import org.flixel.FlxPoint;
	import org.flixel.FlxG;
	public class Hero extends FlxSprite
	{
		public var stage:GameState;
		
		public var range:int;
		public var speed:Number;
		public var health:int;
		public var mana:int;
		
		public var decision:Decision;
		
		public function Hero(x:Number, y:Number, stage:GameState) 
		{
			this.x = x;
			this.y = y;
			this.stage = stage;
			loadGraphic(Assets._heroImage);
		}
		
		public function lookAt(boss:FlxSprite):void
		{
			var lookAngle:Number = FlxU.getAngle(new FlxPoint(boss.x, boss.y), new FlxPoint(x, y));
			this.angle = lookAngle;
		}
		
		public function moveTo(target:FlxSprite):void
		{
			var direction:FlxPoint = FlxPoint.direction(getPosition(), target.getPosition());
			if (direction.getLength() > speed)
			{
				direction.normalize();
				x = x + direction.x * speed;
				y = y + direction.y * speed;
			}
			else
			{
				setPosition(target.getPosition());
			}
		}
		
		public function makeDecision():void
		{
			throw("Yazacagin koda sokiyim: pure virtual function call");
		}
		
		override public function update():void
		{
			if (decision == null || decision.isDone())
			{
				makeDecision();
			}
			
			decision.tick(Constants.fixedDt);
			
			
		}
		
	}

}