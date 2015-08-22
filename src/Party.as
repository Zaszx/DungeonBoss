package 
{
	import org.flixel.FlxG;
	public class Party 
	{
		var heroes:Array = new Array();
		var stage:GameState;
		public function Party(stage:GameState) 
		{
			this.stage = stage;
			init();
		}
		
		public function init()
		{
			while (heroes.length != 0)
			{
				heroes.pop();
			}
			
			heroes.push(new Tank(FlxG.width * 1 / 6.0, 100));
			heroes.push(new Mage(FlxG.width * 2 / 6.0, 100));
			heroes.push(new Mage(FlxG.width * 3 / 6.0, 100));
			heroes.push(new Mage(FlxG.width * 4 / 6.0, 100));
			heroes.push(new Mage(FlxG.width * 5 / 6.0, 100));
			
			for each(var hero:Hero in heroes)
			{
				FlxG.state.add(hero);
			}
		}
		
		public function tick()
		{
			for each(var hero:Hero in heroes)
			{
				hero.lookAt(stage.boss);
			}
			
			
		}
		
	}

}