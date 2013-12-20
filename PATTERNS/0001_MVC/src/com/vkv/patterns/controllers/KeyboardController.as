package com.vkv.patterns.controllers 
{
	import com.vkv.patterns.models.IModel;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Vladiimir V. Kravchenko
	 */
	public class KeyboardController implements IKeyboardHandler 
	{
		private var _model:IModel;
		
		public function KeyboardController(model:IModel) 
		{
			_model = model;
		}
		
		/* INTERFACE com.vkv.patterns.controllers.IKeyboardHandler */
		
		public function keypressHandler(event:KeyboardEvent):void 
		{
			_model.setValue(event.charCode.toString());
		}
		
	}

}