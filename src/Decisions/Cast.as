package Decisions
{
	import org.flixel.*;
	import Spells.*;
	public class Cast extends Decision
	{
		public var spellToCast:Spell;
		public var target:FlxSprite;
		public var percent:Number;
		
		private var accumulatedTime:Number = 0;
		private var _isDone:Boolean = false;
		
		public function Cast(stage:GameState, hero:Hero, target:FlxSprite, spellToCast:Spell) 
		{
			super(stage, hero);
			this.target = target;
			this.spellToCast = spellToCast;
			percent = 0;
		}
		
		override public function execute():void
		{
			
		}
		
		override public function tick(dt:Number):void
		{
			if (!isDone())
			{
				if (FlxU.getDistance(target.getPosition(), hero.getPosition()) > hero.range * Constants.rangeCancelCastMultiplier)
				{
					_isDone = true;
				}
				accumulatedTime += dt;
				percent = accumulatedTime * 100.0 / spellToCast.timeToCast;
				if (accumulatedTime > spellToCast.timeToCast)
				{
					spellToCast.start(hero, target);
					stage.addSpell(spellToCast);
					_isDone = true;
				}	
			}
		}
		
		override public function isDone():Boolean
		{
			return _isDone;
		}
		
	}

}