-- Call plugins
return require('packer').startup(function()
	
    -- Call plugin manager (packer)
	use('wbthomason/packer.nvim') 


    -- Improve ui ( lualine, vim-gusher, scrollbar, colorizer )
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		require('lualine').setup()
	} 
	use('Rustysrp/vim-gusher')
    use { 
        'petertriho/nvim-scrollbar',
        require('scrollbar').setup()
    }
    use {
        'norcalli/nvim-colorizer.lua',
    	require 'colorizer'.setup()
    }


	-- File management ( nerdtree, devicons plugin, git plugin )
	use('preservim/nerdtree')
    use('ryanoasis/vim-devicons') 
    use('Xuyuanp/nerdtree-git-plugin') 


    -- Command autocompletion
	use {
		'gelguy/wilder.nvim',

        -- mode activation
		require('wilder').setup({modes = {':', '/', '?'}}),

        -- palette in middle of screen
        require('wilder').set_option('renderer', require('wilder').popupmenu_renderer(
          require('wilder').popupmenu_palette_theme({
            -- 'single', 'double', 'rounded' or 'solid'
            -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
            border = 'rounded',
            max_height = '60%',      -- max height of the palette
            min_height = 0,          -- set to the same as 'max_height' for a fixed height window
            prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
            reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
            left = {' ', require('wilder').popupmenu_devicons()}, -- devicons on the left of palette
          })
         )),
	}
end)
