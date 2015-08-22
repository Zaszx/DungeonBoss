package 
{
	import org.flixel.FlxState;
	public class GameState extends FlxState
	{
		public var boss:Boss;
		public var party:Party;
		
		public function GameState() 
		{
			
		}
		
		override public function create():void
		{
			boss = new Boss();
			add(boss);
			party = new Party(this);
		}
		
		override public function update(): void
		{
			super.update();
			party.tick();
		}
		
	}

}