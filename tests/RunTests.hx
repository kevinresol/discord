package ;

import discord.Discord;

class RunTests {
	
	static final TOKEN = Sys.getEnv('DISCORD_BOT_TOKEN');

	static function main() {
		final discord = new Discord('Bot $TOKEN');
		discord.v9().channels().ofId('950220531137904681').sendMessage({
			content: 'Test',
			components: [ActionRow([
				Button({
					style: Link,
					label: 'Google',
					url: 'https://google.com',
				}),
			])]
		}).handle(o -> trace(o));
	}

}