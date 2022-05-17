package discord.v9.types;

typedef Message = {
	final ?id:Snowflake; // will not have this attr when error exist
	final ?channel_id:Snowflake; // will not have this attr when error exist
}