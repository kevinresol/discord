package discord.v9;

import discord.v9.types.Snowflake;
import discord.v9.types.Message;

interface Channel {
	@:post('/messages')
	function sendMessage(body:SendMessageRequest):Message;
}

typedef SendMessageRequest = {
	final content:String;
	final ?components:Array<Component>;
}

enum Component {
	@:json({type: 1}) ActionRow(components:Array<Component>);
	@:json({type: 2}) Button(button:Button);
	// @:json({type: 3}) SelectMenu(); // TODO
	// @:json({type: 4}) TextInput(); // TODO
}

typedef Button = {
	final style:ButtonStyle;
	final ?label:String;
	final ?emoji:{
		final name:String;
		final id:Snowflake;
		final animated:Bool;
	}
	final ?custom_id:String;
	final ?url:String;
	final ?disabled:Bool;
}

enum abstract ButtonStyle(Int) {
	final Primary = 1;
	final Secondary = 2;
	final Success = 3;
	final Danger = 4;
	final Link = 5;
}
