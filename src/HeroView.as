package 
{
	import Decisions.Cast;
	import org.flixel.*;
	public class HeroView 
	{
		var hero:Hero;
		var stage:GameState;
		
		var healthBar:FlxSprite;
		var healthText:FlxText;
		var castingBar:FlxSprite;
		var castingText:FlxText;
		
		var castingSpellName:FlxText;
		
		public function HeroView(hero:Hero, stage:GameState) 
		{
			this.hero = hero;
			this.stage = stage;
			healthBar = new FlxSprite(hero.getPosition().x, hero.getPosition().y - 30, Assets._heroHealthBar);
			healthText = new FlxText(hero.getPosition().x, hero.getPosition().y - 30, 100, "100%");
			healthText.alignment = "center";
			
			castingBar = new FlxSprite(hero.getPosition().x, hero.getPosition().y - 20, Assets._heroCastingBar);
			castingText = new FlxText(hero.getPosition().x, hero.getPosition().y - 30, 100, "");
			castingText.alignment = "center";
			
			castingSpellName = new FlxText(hero.getPosition().x, hero.getPosition().y - 10, 100, "");
			castingSpellName.alignment = "center";
			
			stage.add(healthBar);
			stage.add(healthText);
			stage.add(castingBar);
			stage.add(castingText);
			stage.add(castingSpellName);
		}
		
		public function tick():void
		{
			var healthPercent:Number = hero.health * 100.0 / hero.maxHealth;
			healthBar.scale.x = healthPercent / 100.0;
			healthText.text = "" + (int)(healthPercent) + "%";
			
			if (hero.decision && hero.decision is Cast)
			{
				var currentCast:Cast = hero.decision as Cast;
				castingBar.scale.x = currentCast.percent / 100.0;
				castingText.text = "" + (int)(currentCast.percent) + "%";
				
				castingSpellName.text = currentCast.spellToCast.name;
			}
			else
			{
				castingBar.scale.x = 0;
				castingText.text = "";
				castingSpellName.text = "";
			}
			
			healthBar.x = hero.x;
			healthBar.y = hero.y - 30;
			healthText.x = hero.x;
			healthText.y = hero.y - 30;
			
			castingBar.x = hero.x;
			castingBar.y = hero.y - 20;
			castingText.x = hero.x;
			castingText.y = hero.y - 20;
			
			castingSpellName.x = hero.x;
			castingSpellName.y = hero.y - 10;
		}
		
	}

}