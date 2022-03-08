package discord;

import tink.web.proxy.Remote;
import tink.http.Request;
import tink.http.Header;

@:forward
abstract Discord(Remote<Api>) from Remote<Api> to Remote<Api>{
	public inline function new(authorization:String) {
		this = tink.Web.connect(('https://discord.com/api':Api), {
			augment: {
				before: [req -> new OutgoingRequest(req.header.concat([new HeaderField(AUTHORIZATION, authorization)]), req.body)],
			}
		});
	}
}