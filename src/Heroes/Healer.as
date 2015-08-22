package Heroes
{
	import Decisions.*;
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	import org.flixel.FlxU;
	import Spells.*;
	public class Healer extends Hero
	{
		public var party:Party;
		
		public function Healer(x:Number, y:Number, stage:GameState, party:Party) 
		{
			super(x, y, stage);
			this.party = party;
			
			range = 250.0;
			speed = 2.0;
			health = 100;
			maxHealth = 100;
			mana = 100;
		}
		
		override public function makeDecision():void
		{
			var distanceToBoss:Number = FlxU.getDistance(getPosition(), stage.boss.getPosition());
			
			if (distanceToBoss < Constants.fleeEndDistance)
			{
				decision = new Flee(stage, this, stage.boss);
				return;
			}
			
			var minimumDistance:Number = Number.MAX_VALUE;
			var minimumDistanceDamagedHero:Hero = null;
			
			var averageHeroPosition:FlxPoint = new FlxPoint(0, 0);
			
			for (var i:int = 0; i < party.heroes.length; i++)
			{
				var currentHero:Hero = party.heroes[i];
				if (currentHero.health != currentHero.maxHealth)
				{
					var currentDistance:Number = FlxU.getDistance(getPosition(), currentHero.getPosition());
					if (currentDistance < minimumDistance)
					{
						minimumDistance = currentDistance;
						minimumDistanceDamagedHero = currentHero;
					}
				}
				if (currentHero != this)
				{
					averageHeroPosition.x += currentHero.x;
					averageHeroPosition.y += currentHero.y;
				}
			}
			
			if (minimumDistanceDamagedHero)
			{
				decision = new Cast(stage, this, minimumDistanceDamagedHero, new Heal());
				return;
			}
			
			
			if (party.heroes.length > 1)
			{
				averageHeroPosition.x /= party.heroes.length - 1;
				averageHeroPosition.y /= party.heroes.length - 1;
			}
			
			decision = new Move(stage, this, new FlxSprite(averageHeroPosition.x, averageHeroPosition.y), 2.0);
		}
		
	}

}