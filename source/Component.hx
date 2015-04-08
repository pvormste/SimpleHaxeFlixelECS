package;

import Entity;

class Component
{
	// Some private fields
	private var _baseEntity:Entity;
	private var _enabled:Bool;
	private var _visible:Bool;

	/**
	 * Gets the class name of the component without package.
	 *
	 * @returns The class name.
	 */
	public function getComponentName():String
	{
		return Type.getClassName(Type.getClass(this)).split(".").pop();
	}

	/**
	 * Sets the base entity of this component.
	 * 
	 * @params The owning entity to be set as base entity.
	 */
	public function setBaseEntity(entity:Entity):Void
	{
		_baseEntity = entity;
	}

	// Constructor
	public function new()
	{
		_enabled = true;
		_visible = true;
	}

	/**
	 * Removes the component from the list of it's base entity
	 */
	public function remove()
	{
		_baseEntity.removeComponent(this);
	}

	/**
	 * Gets a component from the base entity.
	 *
	 * @returns The specific component.
	 */
	public function getComponent(componentName:String):Dynamic
	{
		return _baseEntity.getComponent(componentName);
	}

	/**
	 * The update routine.
	 */
	public function update():Void
	{

	}

	/**
	 * The draw routine.
	 */
	public function draw():Void
	{

	}

	/**
	 * Enables the component.
	 */
	public function enable():Void
	{
		_enabled = true;
	}

	/**
	 * Disables the component.
	 */
	public function disable():Void
	{
		_enabled = false;
	}

	/**
	 * Shows if the component is enabled or not.
	 *
	 * @returns If it's enabled.
	 */
	public function isEnabled():Bool
	{
		return _enabled;
	}

	/**
	 * Makes the component drawable.
	 */
	public function show():Void
	{
		_visible = true;
	}

	/**
	 * Hide the component, so it can't be drawn anymore.
	 */
	public function hide():Void
	{
		_visible = false;
	}

	/**
	 * Shows, if it's drawable or not.
	 *
	 * @returns The visibility of the component.
	 */
	public function isVisible():Bool
	{
		return _visible;
	}

}