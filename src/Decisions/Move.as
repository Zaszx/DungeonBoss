package Decisions
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	import org.flixel.FlxU;
	public class Move extends Decision
	{
		public var target:FlxSprite;
		public var range:Number;
		public function Move(stage:GameState, hero:Hero, target:FlxSprite, range:Number) 
		{
			super(stage, hero);
			this.target = target;
			this.range = range;
		}
		
		override public function execute():void
		{
			
		}
		
		override public function tick(dt:Number):void
		{
			if (!isDone())
			{
				hero.moveTo(target);
			}
		}
		
		override public function isDone():Boolean
		{
			return FlxU.getDistance(hero.getPosition(), target.getPosition()) < range;
		}
		
	}

}