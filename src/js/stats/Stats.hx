package js.stats;

import js.html.Element;

extern class Stats {
  public var REVISION(default, null):Int;
  public var domElement(default, null):Element;

  public function new();

  public function begin():Void;
  public function end():Void;
  public function update():Void;
  public function setMode(value:Int):Void;
}
