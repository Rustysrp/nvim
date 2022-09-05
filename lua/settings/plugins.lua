-- call plugins
return require('packer').startup(function()
	
    -- call pack manager
	use('wbthomason/packer.nvim') 

	use{
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		require('lualine').setup()
	}

	-- theme
	use('Rustysrp/vim-gusher')

	-- css color
	use('norcalli/nvim-colorizer.lua')

	-- file management
	use('preservim/nerdtree')

	use {
		'gelguy/wilder.nvim',

		require('wilder').setup({modes = {':', '/', '?'}}),

		require('wilder').set_option('renderer', require('wilder').popupmenu_renderer({
	  		highlighter = require('wilder').basic_highlighter()
		})),

		require('wilder').set_option('renderer', require('wilder').popupmenu_renderer(
		  require('wilder').popupmenu_border_theme({
		    highlights = {
		      border = 'Normal', -- highlight to use for the border
		    },
		    -- 'single', 'double', 'rounded' or 'solid'
		    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
		    border = 'rounded',
		  })
		))
	}
end)
