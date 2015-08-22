package 
{
	public class Party 
	{
		var heroes:Array = new Array();
		
		public function Party() 
		{
			init();
		}
		
		public function init()
		{
			while (heroes.length != 0)
			{
				heroes.pop();
			}
			
			heroes.push(new Tank());
			heroes.push(new Mage());
			heroes.push(new Mage());
			heroes.push(new Mage());
			heroes.push(new Mage());
		}
		
	}

}