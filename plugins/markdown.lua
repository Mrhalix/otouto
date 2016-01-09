local triggers = {
	''
}
local inline_plugin = true

local action = function(inline)
    local input = inline.query
    local text = "["..inline_block('Bold', '*'..input..'*')..', '
    text = text .. inline_block('Italic', '_'..input..'_')..', '
    text = text .. inline_block('Code', '```'..input..'```').."]"
    sendInline(inline.id, text)
end

return {
	action = action,
	triggers = triggers,
	inline_plugin = inline_plugin
}