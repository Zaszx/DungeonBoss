package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import org.flixel.*;
	[SWF (width = "500",height = "500")]
	public class DungeonBoss extends FlxGame 
	{
		public function DungeonBoss()
		{
			super(500, 500, GameState, 1, 50, 50, true);
			forceDebugger = true;			
		}	
	}

}