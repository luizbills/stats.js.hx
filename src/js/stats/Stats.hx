package js.stats;

import js.html.DivElement;
import js.html.CanvasElement;

@:native("Stats")
extern class Stats {

  public var REVISION(default, null):Int;
  public var dom(default, null):DivElement;

  public function new();

  public function addPanel(panel:Panel):Panel;
  public function showPanel(id:Int):Void;

  public function begin():Void;
  public function end():Void;
  public function update():Void;

  // Backwards Compatibility
  public function setMode(value:Int):Void;
  public var domElement(default, null):DivElement;

}

@:native("Stats.Panel")
extern class Panel {

  public var dom(default, null):CanvasElement;

  public function new(name:String, fg:String, bg:String);
  public function update(value:Float, maxValue:Float):Void;

}
