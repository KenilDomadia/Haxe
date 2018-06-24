import openfl.display.Sprite;
import openfl.display.Stage;
import openfl.events.Event;
import motion.Actuate;
import motion.easing.Elastic;
import motion.easing.Linear;

class App extends Sprite {
	
	
	public function new () {
		
		super ();
		
		var squareSize = 200;
		var squares =[];
		var colors = [0xFF0000,0x990000,0x550000];
		

		for(i in 0...3)
		{squares.push(new Sprite ());
			squares[i].graphics.beginFill (colors[i], 0.5);
		squares[i].graphics.drawRect (i*200, 0, squareSize, squareSize);
		squares[i].graphics.endFill ();
		this.addChild(squares[i]);

		Actuate.tween (squares[i], 5, { y: 100 }).ease (Elastic.easeOut).delay (i/2).repeat ().reflect ();
		Actuate.tween (squares[i], 5, { alpha: 0 }).ease (Linear.easeNone).delay (i/2).repeat ().reflect ();
		}
		
		
		
		
		// square2.graphics.beginFill (0x00FF00, 0.5);
		// square2.graphics.drawRect (200, 0, squareSize, squareSize);
		// square2.graphics.endFill ();
		// this.addChild (square2);
				
		
		// square3.graphics.beginFill (0x0000FF, 0.5);
		// square3.graphics.drawRect (400, 0, squareSize, squareSize);
		// square3.graphics.endFill ();
		// this.addChild (square3);
		
		// Actuate.tween (square1, 4, { y: 200 }).repeat ().reflect ();
		// Actuate.tween (square1, 4, { y: 300 }).ease (Elastic.easeOut).repeat ().reflect ();
		// Actuate.tween (square1, 4, { alpha: 0 }).ease (Linear.easeNone).repeat ().reflect ();
	}
	
	
	static function main () {
		
		var stage = new Stage (700, 700, 0xFFFFFF, App);
		js.Browser.document.body.appendChild (stage.element);
		
	}
	
	
}