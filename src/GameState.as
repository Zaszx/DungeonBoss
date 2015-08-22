package 
{
	import org.flixel.FlxState;
	public class GameState extends FlxState
	{
		public function GameState() 
		{
			
		}
		
		override public function create():void
		{
			var boss:Boss = new Boss();
			add(boss);
		}
		
		override public function update(): void
		{
			super.update();
			
		}
		
	}

}