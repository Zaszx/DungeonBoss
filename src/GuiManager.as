package 
{
	import org.flixel.*;
	public class GuiManager 
	{
		public var stage:GameState;
		
		public var healthBar:FlxSprite;
		public var healthText:FlxText;
		
		public function GuiManager(stage:GameState) 
		{
			this.stage = stage;
			
			healthBar = new FlxSprite(0, 600, Assets._bossHealthBar);
			healthText = new FlxText(0, 600, 800, "Health: " + stage.boss.maxHealth);
			healthText.alignment = "center";
			healthText.size = 25;
			
			stage.add(healthBar);
			stage.add(healthText);
		}
		
		public function tick():void
		{
			healthBar.scale.x = stage.boss.health / stage.boss.maxHealth;
			healthText.text = "Health: " + (int)(stage.boss.health);
		}
		
	}

}