package ;

import raphael.Raphael;

class Test {
	static function main():Void {
		// Creates canvas 320 × 200
		var paper = new Raphael("main", 320, 200);
		
		// Creates circle at x = 50, y = 40, with radius 10
		var circle = paper.circle(50, 40, 10);
		// Sets the fill attribute of the circle to red (#f00)
		circle.attr("fill", "#f00");
		
		// Sets the stroke attribute of the circle to white
		circle.attr("stroke", "#fff");
		
		var text = paper.text(180, 180, "Alright!");
		text.scale(3, 3);
	}
}