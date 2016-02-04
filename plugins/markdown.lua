local command = 'Markdown'
local doc = 'Markdown'

local triggers = {
	'^/!/inline'
}

local action = function(msg)
    
    local input =URL.escape(msg.text:input())
    local text = "["..inline_block('Bold', '*'..input..'*')..', '
    text = text .. inline_block('Italic', '_'..input..'_')..', '
    text = text .. inline_block('Link', '_'..input..'_')..', '
    text = text .. inline_block('Amin', '_'Mrhalix'_')..', '
    text = text .. inline_block('Code', '```'..input..'```')..']'
    sendInline(msg.id, text)
end

return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
