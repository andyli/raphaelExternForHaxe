/*
 * Extern file for Raphaël(http://raphaeljs.com/), a JS vector graphic library.
 * for Raphaël 1.5.2
 */

package raphael;

import js.Dom;

@:native("Raphael")
extern class Raphael {
	public function new(p0:Dynamic, ?p1:Dynamic, ?p2:Dynamic, ?p3:Dynamic):Void;
	
	/*
	 * Element creation
	 */
	
	public function circle(x:Float, y:Float, r:Float):RaphaelElement;
	public function rect(x:Float, y:Float, width:Float, height:Float, ?r:Float):RaphaelElement;
	public function ellipse(x:Float, y:Float, rx:Float, ry:Float):RaphaelElement;
	public function image(src:String, x:Float, y:Float, width:Float, height:Float):RaphaelElement;
	public function text(x:Float, y:Float, text:String):RaphaelElement;
	public function path(?pathString:String):RaphaelElement;
	public function set():RaphaelSet;
	
	
	/*
	 * Font
	 */
	
	static public function registerFont(font:Dynamic):Dynamic;
	public function getFont(family:String, ?weight:String, ?style:String, ?stretch:String):Dynamic;
	public function print(x:Float, y:Float, text:String, font:Dynamic, font_size:Float):RaphaelSet;
	
	
	/*
	 * Color
	 */
	
	static public function getRGB(color:String):RaphaelRGB;
	static public function getColor(?val:Float):String;
	/* getColor.reset */
	inline static public function getColorReset():Void {
		untyped __js__("Raphael.getColor.reset()");
	}
	static public function hsb2rgb(hue:Float, saturation:Float, brightness:Float):RaphaelRGB;
	static public function hsl2rgb(hue:Float, saturation:Float, lightness:Float):RaphaelRGB;
	static public function rgb2hsb(red:Float, green:Float, blue:Float):RaphaelHSB;
	static public function rgb2hsl(red:Float, green:Float, blue:Float):RaphaelHSL;
	
	/*
	 * Events
	 */
	
	public function click(handler:Event->Void):Raphael;
	public function dblclick(handler:Event->Void):Raphael;
	public function mousedown(handler:Event->Void):Raphael;
	public function mousemove(handler:Event->Void):Raphael;
	public function mouseout(handler:Event->Void):Raphael;
	public function mouseover(handler:Event->Void):Raphael;
	public function mouseup(handler:Event->Void):Raphael;
	public function touchstart(handler:Event->Void):Raphael;
	public function touchmove(handler:Event->Void):Raphael;
	public function touchend(handler:Event->Void):Raphael;
	public function orientationchange(handler:Event->Void):Raphael;
	public function touchcancel(handler:Event->Void):Raphael;
	public function gesturestart(handler:Event->Void):Raphael;
	public function gesturechange(handler:Event->Void):Raphael;
	public function gestureend(handler:Event->Void):Raphael;
	
	public function unclick(handler:Event->Void):Raphael;
	public function undblclick(handler:Event->Void):Raphael;
	public function unmousedown(handler:Event->Void):Raphael;
	public function unmousemove(handler:Event->Void):Raphael;
	public function unmouseout(handler:Event->Void):Raphael;
	public function unmouseover(handler:Event->Void):Raphael;
	public function unmouseup(handler:Event->Void):Raphael;
	public function untouchstart(handler:Event->Void):Raphael;
	public function untouchmove(handler:Event->Void):Raphael;
	public function untouchend(handler:Event->Void):Raphael;
	public function unorientationchange(handler:Event->Void):Raphael;
	public function untouchcancel(handler:Event->Void):Raphael;
	public function ungesturestart(handler:Event->Void):Raphael;
	public function ungesturechange(handler:Event->Void):Raphael;
	public function ungestureend(handler:Event->Void):Raphael;
	
	
	/*
	 * Others
	 */
	
	public function clear():Raphael;
	public function remove():Bool;
	public function setSize(width:Float, height:Float):Raphael;
	static public function setWindow(window:Dynamic):Void;
	public var canvas(default, null):Dom;
	public var raphael(default, null):Class<Raphael>;
	public function safari():Void;
	static public function ninja():Class<Raphael>;
	static public var type(default, null):String; //"SVG", "VML"
	static public var version(default, null):String;
	public var customAttributes:Dynamic;
	static public function angle(x1:Float, y1:Float, x2:Float, y2:Float, ?x3:Float, ?y3:Float):Float;
}

extern class RaphaelElement {
	public var node(default, null):RaphaelNode;
	public var paper(default, null):Raphael;
	public var type(default, null):String; //"circle", "rect", "ellipse", "image", "text", "path", "set"
	public function remove():Void;
	public function hide():RaphaelElement;
	public function show():RaphaelElement;
	public function rotate(degree:Float, ?p1:Dynamic, ?p2:Dynamic):RaphaelElement;
	public function translate(dx:Float, dy:Float):RaphaelElement;
	public function scale(Xtimes :Float, Ytimes:Float, ?centerX:Float, ?centerY:Float):RaphaelElement;
	public function attr(?p0:Dynamic, ?p1:Dynamic):Dynamic;
	inline public function attrSet(p0:Dynamic, ?p1:Dynamic):RaphaelElement {
		return attr(p0, p1);
	}
	public function animate(newAttrs:Dynamic, ms:Float, ?easing:String, ?callbackFunction:Dynamic):RaphaelElement;
	public function animateWith(element:RaphaelElement, newAttrs:Dynamic, ms:Float, ?easing:Dynamic, ?callbackFunction:Dynamic):RaphaelElement;
	public function animateAlong(path:Dynamic, ms:Float, ?rotate:Bool = false, ?callbackFunction:Dynamic):RaphaelElement;
	public function animateAlongBack(path:Dynamic, ms:Float, ?rotate:Bool = false, ?callbackFunction:Dynamic):RaphaelElement;
	public function onAnimation(func:Dynamic):RaphaelElement;
	public function stop():RaphaelElement;
	public function getBBox(): { x:Float, y:Float, width:Float, height:Float };
	public function toFront():RaphaelElement;
	public function toBack():RaphaelElement;
	public function insertBefore(obj:RaphaelElement):RaphaelElement;
	public function insertAfter(obj:RaphaelElement):RaphaelElement;
	public function clone():RaphaelElement;
	public function getTotalLength():Float;
	public function getPointAtLength(length:Float): { x:Float, y:Float };
	public function getSubpath(from:Float, to:Float):RaphaelElement;
	
	
	/*
	 * Events
	 */
	
	public function click(handler:Event->Void):RaphaelElement;
	public function dblclick(handler:Event->Void):RaphaelElement;
	public function mousedown(handler:Event->Void):RaphaelElement;
	public function mousemove(handler:Event->Void):RaphaelElement;
	public function mouseout(handler:Event->Void):RaphaelElement;
	public function mouseover(handler:Event->Void):RaphaelElement;
	public function mouseup(handler:Event->Void):RaphaelElement;
	public function touchstart(handler:Event->Void):RaphaelElement;
	public function touchmove(handler:Event->Void):RaphaelElement;
	public function touchend(handler:Event->Void):RaphaelElement;
	public function orientationchange(handler:Event->Void):RaphaelElement;
	public function touchcancel(handler:Event->Void):RaphaelElement;
	public function gesturestart(handler:Event->Void):RaphaelElement;
	public function gesturechange(handler:Event->Void):RaphaelElement;
	public function gestureend(handler:Event->Void):RaphaelElement;
	public function hover(handler_in:Event->Void, handler_out:Event->Void):RaphaelElement;
	public function drag(handler_move:Event->Void, handler_start:Event->Void, handler_end:Event->Void):RaphaelElement;
	
	public function unclick(handler:Event->Void):RaphaelElement;
	public function undblclick(handler:Event->Void):RaphaelElement;
	public function unmousedown(handler:Event->Void):RaphaelElement;
	public function unmousemove(handler:Event->Void):RaphaelElement;
	public function unmouseout(handler:Event->Void):RaphaelElement;
	public function unmouseover(handler:Event->Void):RaphaelElement;
	public function unmouseup(handler:Event->Void):RaphaelElement;
	public function untouchstart(handler:Event->Void):RaphaelElement;
	public function untouchmove(handler:Event->Void):RaphaelElement;
	public function untouchend(handler:Event->Void):RaphaelElement;
	public function unorientationchange(handler:Event->Void):RaphaelElement;
	public function untouchcancel(handler:Event->Void):RaphaelElement;
	public function ungesturestart(handler:Event->Void):RaphaelElement;
	public function ungesturechange(handler:Event->Void):RaphaelElement;
	public function ungestureend(handler:Event->Void):RaphaelElement;
	public function unhover(handler_in:Event->Void, handler_out:Event->Void):RaphaelElement;
}

extern class RaphaelSet extends RaphaelElement{
	var length(default, null) : Int;
	var items(default, null) : Array<RaphaelElement>;
	function pop() : Null<RaphaelElement>;
	function push(x : RaphaelElement) : RaphaelSet;
}

typedef RaphaelNode = { > Dom,
	var raphael(default, null):RaphaelElement;
}

typedef RaphaelRGB = {
	r:Float, 
	g:Float, 
	b:Float, 
	hex:String,
	toString:Void->String
}

typedef RaphaelHSB = {
	h:Float, 
	s:Float, 
	b:Float,
	toString:Void->String
}

typedef RaphaelHSL = {
	h:Float, 
	s:Float, 
	l:Float,
	toString:Void->String
}
