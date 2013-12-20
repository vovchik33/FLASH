package com.vkv.patterns.models 
{
	import flash.events.IEventDispatcher;
	
	/**
	 * ...
	 * @author Vladiimir V. Kravchenko
	 */
	public interface IModel extends IEventDispatcher 
	{
		function setValue(value:String):void;
		function getValue():String;
	}
	
}