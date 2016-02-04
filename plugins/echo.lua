local command = 'echo <text>'
local doc = [[```
/echo <text>
Repeats a string of text.
```]]

local triggers = {
	'^/echo[@'..bot.username..']*'
}

local action = function(msg)

	local input = msg.text:input()
	local amin = "*MRhalix*"
	local file = media/sticker.webp
	if input then
		sendMessage(msg.chat.id, latcyr(amin), use_markdown)
		sendReply(msg, 'Please')
		sendSticker = function(chat_id, media/sticker.webp , reply_to_message_id)
	else
		sendMessage(msg.chat.id, doc, true, msg.message_id, true)
	end

end

return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
