package Decisions
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	import org.flixel.FlxU;
	import Heroes.*;
	public class Flee extends Decision
	{
		public var target:FlxSprite;
		public function Flee(stage:GameState, hero:Hero, target:FlxSprite) 
		{
			super(stage, hero);
			this.target = target;
		}
		
		override public function execute():void
		{
			
		}
		
		override public function tick(dt:Number):void
		{
			if (!isDone())
			{
				var direction:FlxPoint = FlxPoint.direction(target.getPosition(), hero.getPosition());
				hero.moveInDirection(direction);
			}
		}
		
		override public function isDone():Boolean
		{
			return FlxU.getDistance(hero.getPosition(), target.getPosition()) > Constants.fleeEndDistance;
		}
		
	}

}