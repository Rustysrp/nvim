-- call plugins
return require('packer').startup(function()
	
    -- call plugin manager (packer)
	use('wbthomason/packer.nvim') 

	use{
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		require('lualine').setup()
	}

	-- theme
	use('Rustysrp/vim-gusher')

    -- css color indicators
    use {
        'norcalli/nvim-colorizer.lua',
    	require 'colorizer'.setup()
    }

	-- file management
	use('preservim/nerdtree')
    use('ryanoasis/vim-devicons') -- icons for nerdtree
    use('Xuyuanp/nerdtree-git-plugin') -- git status for nerdtree

    -- command autocompletion
	use {
		'gelguy/wilder.nvim',

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
          })
         ))

	}
end)
