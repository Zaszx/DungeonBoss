package 
{
	import org.flixel.*;
	import org.flixel.FlxState;
	import Spells.*;
	public class GameState extends FlxState
	{
		public var boss:Boss;
		public var party:Party;
		
		public var guiManager:GuiManager;
		
		public var spells:Array = new Array();
		
		public function GameState() 
		{
			
		}
		
		override public function create():void
		{
			boss = new Boss();
			add(boss);
			party = new Party(this);
			
			guiManager = new GuiManager(this);
		}
		
		override public function update(): void
		{
			super.update();
			party.tick();
			checkCollisions();
			
			guiManager.tick();
		}
		
		public function addSpell(spell:Spell):void
		{
			spells.push(spell);
			add(spell.sprite);
		}
		
		public function checkCollisions():void
		{
			for (var i:int = 0; i < spells.length; i++)
			{
				var s:Spell = spells[i];
				if (FlxG.overlap(s.sprite, boss))
				{
					boss.receiveDamage(s.damage);
					remove(s.sprite);
					spells.splice(i, 1);
					i--;
				}
			}
		}
		
	}

}