package;

import Component;

class Entity 
{
	private var _components:List<Component>;

	public function new()
	{
		_components = new List<Component>();
	}

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

	public function addComponent(component:Component):Void
	{
		component.setBaseEntity(this);

		_components.add(component);
	}

	public function removeComponent(component:Component):Void
	{
		_components.remove(component);
	}

	public function addMultipleComponents(components:List<Component>)
	{
		if(components.length > 0)
		{
			for(component in _components)
			{
				addComponent(component);
			}
		}
	}

	public function getComponent(componentName:String):Dynamic
	{

		return _components.filter(function(c) { return c.getComponentName() == componentName; }).first();
	}
}