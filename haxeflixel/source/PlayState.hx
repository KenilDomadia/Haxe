package;

import flixel.FlxState;
import flixel.FlxSprite; 
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		var sq = [];
		for(i in 0...3)
		{
			sq.push(new FlxSprite().makeGraphic(100,100));
			sq[i].x=i*100;
			add(sq[i]);
			FlxTween.tween(sq[i], {  y: 200 ,alpha:0.5}, 5, { type: FlxTween.PINGPONG, ease: FlxEase.elasticOut,  startDelay: i/2 });
		}		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
