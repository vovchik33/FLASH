package com.vkv.patterns.models 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	/**
	 * ...
	 * @author Vladiimir V. Kravchenko
	 */
	public class Model extends EventDispatcher implements IModel 
	{
		private var _value:String;
		
		public function Model(target:IEventDispatcher=null) 
		{
			super(target);
			
		}
		
		/* INTERFACE com.vkv.patterns.models.IModel */
		
		public function setValue(value:String):void 
		{
			if (_value != value) {
				_value = value;
				dispatchEvent(new Event(Event.CHANGE));
			}
		}
		
		public function getValue():String 
		{
			return _value;
		}
		
	}

}