return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'rcarriga/nvim-notify'
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
    use {
        'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate'
        }
    use 'nvim-treesitter/nvim-treesitter-refactor' --treesitter refactor
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
        }
    use 'sharkdp/fd'
    use 'JohnnyMorganz/StyLua'
    use 'sunjon/shade.nvim'                 --highlight active terminal

    use 'williamboman/nvim-lsp-installer'  --lsp install plugin
    use 'neovim/nvim-lspconfig'     --lsp config  plugin
    use 'jose-elias-alvarez/null-ls.nvim' --Inject lsp diagnostics, formattings, code actions and more.
    use 'hrsh7th/nvim-cmp'          -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'      -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip'  -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip'          -- Snippets plugin
    use 'onsails/lspkind.nvim'      --vscode like icons
end)
