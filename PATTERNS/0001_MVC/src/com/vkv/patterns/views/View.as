package com.vkv.patterns.views 
{
	import com.vkv.patterns.controllers.IKeyboardHandler;
	import com.vkv.patterns.models.IModel;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Vladiimir V. Kravchenko
	 */
	public class View implements IView 
	{
		private var _model:IModel;
		private var _controller:IKeyboardHandler;
		private var _target:Stage;
		
		public function View(model:IModel, 
							 controller:IKeyboardHandler,
							 target:Stage) 
		{
			_model = model;
			_controller = controller;
			_target = target;
			
			_target.addEventListener(KeyboardEvent.KEY_DOWN, keypressHandler);
			_model.addEventListener(Event.CHANGE, changeModelHandler);
		}
		private function keypressHandler(event:KeyboardEvent):void {
			_controller.keypressHandler(event);
		}
		private function changeModelHandler(event:Event):void {
			trace("Key Value = ", _model.getValue());
		}
	}

}