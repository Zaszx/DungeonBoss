package 
{
	import org.flixel.FlxG;
	import Heroes.*;
	public class Party 
	{
		public var heroes:Array = new Array();
		public var stage:GameState;
		public function Party(stage:GameState) 
		{
			this.stage = stage;
			init();
		}
		
		public function init():void
		{
			while (heroes.length != 0)
			{
				heroes.pop();
			}
			
			heroes.push(new Tank(FlxG.width * 1 / 6.0, 100, stage));
			heroes.push(new Mage(FlxG.width * 2 / 6.0, 100, stage));
			heroes.push(new Mage(FlxG.width * 3 / 6.0, 100, stage));
			heroes.push(new Mage(FlxG.width * 4 / 6.0, 100, stage));
			heroes.push(new Healer(FlxG.width * 5 / 6.0, 100, stage, this));
			
			for each(var hero:Hero in heroes)
			{
				FlxG.state.add(hero);
			}
		}
		
		public function tick():void
		{
			for each(var hero:Hero in heroes)
			{
				hero.lookAt(stage.boss);
			}
			
			
		}
		
	}

}