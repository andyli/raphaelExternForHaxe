/*
 * Extern file for Raphaël(http://raphaeljs.com/), a JS vector graphic library.
 * for Raphaël 1.5.2
 */

package raphael;

import js.html.*;

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
	
	public function click(handler:EventListener):Raphael;
	public function dblclick(handler:EventListener):Raphael;
	public function mousedown(handler:EventListener):Raphael;
	public function mousemove(handler:EventListener):Raphael;
	public function mouseout(handler:EventListener):Raphael;
	public function mouseover(handler:EventListener):Raphael;
	public function mouseup(handler:EventListener):Raphael;
	public function touchstart(handler:EventListener):Raphael;
	public function touchmove(handler:EventListener):Raphael;
	public function touchend(handler:EventListener):Raphael;
	public function orientationchange(handler:EventListener):Raphael;
	public function touchcancel(handler:EventListener):Raphael;
	public function gesturestart(handler:EventListener):Raphael;
	public function gesturechange(handler:EventListener):Raphael;
	public function gestureend(handler:EventListener):Raphael;
	
	public function unclick(handler:EventListener):Raphael;
	public function undblclick(handler:EventListener):Raphael;
	public function unmousedown(handler:EventListener):Raphael;
	public function unmousemove(handler:EventListener):Raphael;
	public function unmouseout(handler:EventListener):Raphael;
	public function unmouseover(handler:EventListener):Raphael;
	public function unmouseup(handler:EventListener):Raphael;
	public function untouchstart(handler:EventListener):Raphael;
	public function untouchmove(handler:EventListener):Raphael;
	public function untouchend(handler:EventListener):Raphael;
	public function unorientationchange(handler:EventListener):Raphael;
	public function untouchcancel(handler:EventListener):Raphael;
	public function ungesturestart(handler:EventListener):Raphael;
	public function ungesturechange(handler:EventListener):Raphael;
	public function ungestureend(handler:EventListener):Raphael;
	
	
	/*
	 * Others
	 */
	
	public function clear():Raphael;
	public function remove():Bool;
	public function setSize(width:Float, height:Float):Raphael;
	static public function setWindow(window:Dynamic):Void;
	public var canvas(default, null):Element;
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
	
	public function click(handler:EventListener):RaphaelElement;
	public function dblclick(handler:EventListener):RaphaelElement;
	public function mousedown(handler:EventListener):RaphaelElement;
	public function mousemove(handler:EventListener):RaphaelElement;
	public function mouseout(handler:EventListener):RaphaelElement;
	public function mouseover(handler:EventListener):RaphaelElement;
	public function mouseup(handler:EventListener):RaphaelElement;
	public function touchstart(handler:EventListener):RaphaelElement;
	public function touchmove(handler:EventListener):RaphaelElement;
	public function touchend(handler:EventListener):RaphaelElement;
	public function orientationchange(handler:EventListener):RaphaelElement;
	public function touchcancel(handler:EventListener):RaphaelElement;
	public function gesturestart(handler:EventListener):RaphaelElement;
	public function gesturechange(handler:EventListener):RaphaelElement;
	public function gestureend(handler:EventListener):RaphaelElement;
	public function hover(handler_in:EventListener, handler_out:EventListener):RaphaelElement;
	public function drag(handler_move:EventListener, handler_start:EventListener, handler_end:EventListener):RaphaelElement;
	
	public function unclick(handler:EventListener):RaphaelElement;
	public function undblclick(handler:EventListener):RaphaelElement;
	public function unmousedown(handler:EventListener):RaphaelElement;
	public function unmousemove(handler:EventListener):RaphaelElement;
	public function unmouseout(handler:EventListener):RaphaelElement;
	public function unmouseover(handler:EventListener):RaphaelElement;
	public function unmouseup(handler:EventListener):RaphaelElement;
	public function untouchstart(handler:EventListener):RaphaelElement;
	public function untouchmove(handler:EventListener):RaphaelElement;
	public function untouchend(handler:EventListener):RaphaelElement;
	public function unorientationchange(handler:EventListener):RaphaelElement;
	public function untouchcancel(handler:EventListener):RaphaelElement;
	public function ungesturestart(handler:EventListener):RaphaelElement;
	public function ungesturechange(handler:EventListener):RaphaelElement;
	public function ungestureend(handler:EventListener):RaphaelElement;
	public function unhover(handler_in:EventListener, handler_out:EventListener):RaphaelElement;
}

extern class RaphaelSet extends RaphaelElement{
	var length(default, null) : Int;
	var items(default, null) : Array<RaphaelElement>;
	function pop() : Null<RaphaelElement>;
	function push(x : RaphaelElement) : RaphaelSet;
}

typedef RaphaelNode = {> Element,
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
