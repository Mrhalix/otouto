local triggers = {
	''
}
local inline_plugin = true

local action = function(inline)
    local input_i = URL.escape(inline.query)
    local text = "["..inline_block('Bold', '*'..input_i..'*')..', '
    text = text .. inline_block('Italic', '_'..input_i..'_')..', '
    text = text .. inline_block('Code', '```'..input_i..'```').."]"
    sendInline(inline.id, text)
end

return {
	action = action,
	triggers = triggers,
	inline_plugin = inline_plugin
}