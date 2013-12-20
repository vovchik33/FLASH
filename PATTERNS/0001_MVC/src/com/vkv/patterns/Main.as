package com.vkv.patterns
{
	import com.vkv.patterns.controllers.IKeyboardHandler;
	import com.vkv.patterns.controllers.KeyboardController;
	import com.vkv.patterns.models.IModel;
	import com.vkv.patterns.models.Model;
	import com.vkv.patterns.views.IView;
	import com.vkv.patterns.views.View;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Vladiimir V. Kravchenko
	 */
	public class Main extends Sprite 
	{
		var model:IModel;
		var controller:IKeyboardHandler;
		var view:IView;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			model= new Model();
			controller = new KeyboardController(model);
			view= new View(model, controller, this.stage);
		}
		
	}
	
}