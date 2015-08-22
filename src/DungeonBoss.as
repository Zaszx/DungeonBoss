package 
{
	import org.flixel.*;
	[SWF (width = "800",height = "800")]
	public class DungeonBoss extends FlxGame 
	{
		public function DungeonBoss()
		{
			super(800, 800, GameState, 1, 50, 50, true);
			forceDebugger = true;
			FlxG.visualDebug = true;
		}	
	}

}