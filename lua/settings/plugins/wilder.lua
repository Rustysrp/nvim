-- popup menu
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('renderer', wilder.popupmenu_renderer({
	-- highlights
	highlighter = wilder.basic_highlighter(),
}))

wilder.set_option('renderer', wilder.popupmenu_renderer(
	wilder.popupmenu_palette_theme({
		-- 'single', 'double', 'rounded', or 'solid'
		border = 'rounded',
		max_height = '75%',
		min_height = 0,
		prompt_position = 'top',
		reverse = 0,
	})
))
