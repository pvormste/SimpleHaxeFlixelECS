package components;

import Component;
import Entity;

class TestComponent extends Component
{
	var x:Int;
	var y:Int;

	public function new()
	{
		super();

		x = 5;
		y = 5;
	}

	public function getTestData():Int
	{
		return x+y;
	}
}