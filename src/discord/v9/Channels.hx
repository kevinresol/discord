package discord.v9;

import discord.v9.types.Snowflake;

interface Channels {
	@:sub('/$id')
	function ofId(id:Snowflake):Channel;
}