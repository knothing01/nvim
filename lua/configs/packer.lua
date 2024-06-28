-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
        vim.cmd('colorscheme rose-pine')
        end
    })

    use {
        "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'hrsh7th/cmp-buffer'},
        }
    }

    use('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('ThePrimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use ('tpope/vim-commentary')
    use ('tpope/vim-surround')
    use ('preservim/nerdtree')
    use ('preservim/tagbar')
    use ('farmergreg/vim-lastplace')
    use ('m4xshen/autoclose.nvim')
    use ('nvim-tree/nvim-tree.lua')
    use {'akinsho/nvim-bufferline.lua'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'ryanoasis/vim-devicons'}
    use {'goolord/alpha-nvim'}


    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

end)
