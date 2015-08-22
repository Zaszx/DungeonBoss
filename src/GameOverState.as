package 
{
	import org.flixel.*;
	public class GameOverState extends FlxState
	{
		
		public function GameOverState() 
		{
			
		}
		
		override public function create():void
		{
			
		}
		
		override public function update():void
		{
			if (FlxG.keys.R)
			{
				FlxG.switchState(new GameState());
			}
		}
		
	}

}