local command = 'echo <text>'
local doc = [[```
/echo <text>
Repeats a string of text.
```]]

local triggers = {
	'^/echo'
}

local action = function(msg)

	local input = msg.text:input()
	local amin = "*Mrhalix*"
	local username = "@" msg.from.username
	--local file = media/sticker.webp
		sendMessage(msg.chat.id, latcyr(amin), use_markdown)
		sendReply(msg, msg.from.first_name)
		sendReply(msg, , ..username..)
		sendReply(msg, msg.from.id)
		--sendSticker = function(chat_id, media/sticker.webp , reply_to_message_id)
end

return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
