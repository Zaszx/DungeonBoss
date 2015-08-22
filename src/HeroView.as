package 
{
	import Decisions.Cast;
	import org.flixel.*;
	import Heroes.*;
	public class HeroView 
	{
		var hero:Hero;
		var stage:GameState;
		
		var healthBar:FlxSprite;
		var healthText:FlxText;
		var castingBar:FlxSprite;
		var castingText:FlxText;
		
		var castingSpellName:FlxText;
		const guiWidth:Number = 50.0;
		
		public function HeroView(hero:Hero, stage:GameState) 
		{
			this.hero = hero;
			this.stage = stage;
			healthBar = new FlxSprite(hero.getMidpoint().x, hero.getPosition().y - 30, Assets._heroHealthBar);
			healthText = new FlxText(hero.getMidpoint().x, hero.getPosition().y - 30, guiWidth, "100%");
			healthText.alignment = "center";
			
			castingBar = new FlxSprite(hero.getMidpoint().x, hero.getPosition().y - 20, Assets._heroCastingBar);
			castingText = new FlxText(hero.getMidpoint().x, hero.getPosition().y - 30, guiWidth, "");
			castingText.alignment = "center";
			
			castingSpellName = new FlxText(hero.getMidpoint().x, hero.getPosition().y - 10, guiWidth, "");
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
			
			healthBar.x = hero.getMidpoint().x - guiWidth / 2.0;
			healthBar.y = hero.y - 30;
			healthText.x = hero.getMidpoint().x - guiWidth / 2.0;
			healthText.y = hero.y - 30;
			
			castingBar.x = hero.getMidpoint().x - guiWidth / 2.0;
			castingBar.y = hero.y - 20;
			castingText.x = hero.getMidpoint().x - guiWidth / 2.0;
			castingText.y = hero.y - 20;
			
			castingSpellName.x = hero.getMidpoint().x - guiWidth / 2.0;
			castingSpellName.y = hero.y - 10;
		}
		
	}

}