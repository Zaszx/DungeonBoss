package Decisions
{
	import Heroes.*;
	public class Decision 
	{
		public var stage:GameState;
		public var hero:Hero;
		public function Decision(stage:GameState, hero:Hero) 
		{
			this.stage = stage;
			this.hero = hero;
		}
		
		public function execute(): void
		{
			throw("Yazacagin koda sokiyim: pure virtual function call");
		}
		
		public function tick(dt:Number):void
		{
			throw("Yazacagin koda sokiyim: pure virtual function call");
		}
		
		public function isDone():Boolean
		{
			throw("Yazacagin koda sokiyim: pure virtual function call");
		}
		
	}

}