package 
{
	import Decisions.Move;
	public class Tank extends Hero
	{
		
		public function Tank(x:Number, y:Number, stage:GameState) 
		{
			super(x, y, stage);
			
			range = 1.0;
			speed = 2.0;
			health = 100;
			mana = 0;
		}
		
		override public function makeDecision():void
		{
			decision = new Move(stage, this, stage.boss, range);
		}
		
	}

}