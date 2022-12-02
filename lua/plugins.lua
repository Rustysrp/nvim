-- Check and install packer if not on system
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

-- Run the check
local packer_bootstrap = ensure_packer()

-- Start call plugins
return require('packer').startup(function(use)
	
    -- Plugin manager (packer)
	use('wbthomason/packer.nvim') 

    -- UI improvements (lualine, vim-gusher, scrollbar, colorizer, treesitter)
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		require('lualine').setup()
	} 

    -- Import color schemes
	use('Rustysrp/vim-gusher')
    use('rafi/awesome-vim-colorschemes')

    -- Scrollbar on right side of scroon
    use { 
        'petertriho/nvim-scrollbar',
        require('scrollbar').setup()
    }

    -- Visualizes color values
    use {
        'norcalli/nvim-colorizer.lua',
    	require 'colorizer'.setup()
    }

    -- Treesitter config, syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        require('nvim-treesitter.configs').setup {

            -- Ensure desired languages are installed
            ensure_installed = { "c", "cpp", "lua", "rust" },

            auto_install = true,

            -- Enable highlighting 
            highlight = {

                enable = true,

                -- disable = { "c", "cpp", "rust" },

                -- Disable syntax highlighting when file size exceeds certain value (1024 kb)
                --[[
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,
                ]]--

                -- Turning this on might result in a slower processing time
                additional_vim_regex_highlighting = false,
            },
        }
    }


	-- File management (nerdtree, devicons plugin, git plugin)
	use('preservim/nerdtree')
    use('ryanoasis/vim-devicons') 
    use('Xuyuanp/nerdtree-git-plugin') 


    -- Command autocompletion + box popup
	use {
		'gelguy/wilder.nvim',

        -- Mode activation
		require('wilder').setup({modes = {':', '/', '?'}}),

        -- Palette in middle of screen
        require('wilder').set_option('renderer', require('wilder').popupmenu_renderer(
          require('wilder').popupmenu_palette_theme({
            -- 'single', 'double', 'rounded' or 'solid'
            -- Can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
            border = 'rounded',
            max_height = '60%',      -- Max height of the palette
            min_height = 0,          -- Set to the same as 'max_height' for a fixed height window
            prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
            reverse = 0,             -- Set to 1 to reverse the order of the list, use with 'prompt_position'
            left = {' ', require('wilder').popupmenu_devicons()}, -- Devicons on the left of palette
          })
         )),
	}
    
    -- Sync plugins if not installed
	if packer_bootstrap then
		require('packer').sync()
	end

end)
