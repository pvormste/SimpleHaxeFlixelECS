package;

import Entity;

class Component
{
	private var _baseEntity:Entity;
	private var _enabled:Bool;
	private var _visible:Bool;

	public function getComponentName():String
	{

		return Type.getClassName(Type.getClass(this)).split(".").pop();
		//return Type.getClassName(this);
	}

	public function setBaseEntity(entity:Entity):Void
	{
		_baseEntity = entity;
	}

	public function new()
	{
		_enabled = true;
		_visible = true;
	}

	public function update():Void
	{

	}

	public function draw():Void
	{

	}

	public function enable():Void
	{
		_enabled = true;
	}

	public function disable():Void
	{
		_enabled = false;
	}

	public function isEnabled():Bool
	{
		return _enabled;
	}

	public function show():Void
	{
		_visible = true;
	}

	public function hide():Void
	{
		_visible = false;
	}

	public function isVisible():Bool
	{
		return _visible;
	}

}