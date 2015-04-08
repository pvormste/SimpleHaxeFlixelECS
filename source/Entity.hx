package;

import Component;

class Entity 
{
	// List containing all components of this entity
	private var _components:List<Component>;

	// Constructor
	public function new()
	{
		_components = new List<Component>();
	}

	/**
	 * The update routine of the entity calling the updates of every component.
	 */
	public function update():Void
	{
		if(_components.length > 0)
		{
			for(component in _components)
			{
				if(component.isEnabled())
					component.update();
			}
		}
		
	}

	/**
	 * The draw routine of the entity calling the draws of every component.
	 */
	public function draw():Void
	{
		if(_components.length > 0)
		{
			for(component in _components)
			{
				if(component.isVisible())
					component.draw();
			}
		}
		
	}

	/**
	 * Adds a component to the list.
	 *
	 * @params component The component to add.
	 */
	public function addComponent(component:Component):Void
	{
		component.setBaseEntity(this);

		_components.add(component);
	}

	/**
	 * Removes a component from the list.
	 * 
	 * @params component The component which should be removed.
	 */
	public function removeComponent(component:Component):Void
	{
		_components.remove(component);
	}

	/**
	 * Adds mulitple components to the list.
	 *
	 * @params components List containing the components to be added.
	 */
	public function addMultipleComponents(components:List<Component>):Void
	{
		if(components.length > 0)
		{
			for(component in _components)
			{
				addComponent(component);
			}
		}
	}

	/**
	 * Returns the specific component using the class name as string.
	 *
	 * @params componentName The class name of the component as string.
	 *
	 * @return The desired component.
	 */
	public function getComponent(componentName:String):Dynamic
	{
		return _components.filter(function(c) { return c.getComponentName() == componentName; }).first();
	}
}