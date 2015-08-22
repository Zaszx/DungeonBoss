package Heroes
{
	import Decisions.*;
	import org.flixel.FlxU;
	import Spells.*;
	public class Mage extends Hero
	{
		
		public function Mage(x:Number, y:Number, stage:GameState) 
		{
			super(x, y, stage);
			
			range = 250.0;
			speed = 2.0;
			health = 100;
			maxHealth = 100;
			mana = 100;
		}
		
		override public function makeDecision():void
		{
			var distanceToBoss:Number = FlxU.getDistance(getPosition(), stage.boss.getPosition());
			if (distanceToBoss < range)
			{
				if (distanceToBoss < Constants.fleeEndDistance)
				{
					decision = new Flee(stage, this, stage.boss);						
				}
				else
				{
					var fireball:Fireball = new Fireball();
					decision = new Cast(stage, this, stage.boss, fireball);	
				}
			}
			else
			{
				decision = new Move(stage, this, stage.boss, range);
			}
		}
		
	}

}