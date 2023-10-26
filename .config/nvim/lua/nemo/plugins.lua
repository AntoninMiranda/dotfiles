local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Packer manager --
    'wbthomason/packer.nvim',
  -- Header --
    'Nero-F/vim-tek-header',
  -- Themes --
    -- 'akai54/2077.nvim',
    { "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
  -- Lualine --
    { 'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            opt = true
        }
    },
  -- Tree --
    'nvim-treesitter/nvim-treesitter', -- treesitter algo
    { 'nvim-tree/nvim-tree.lua', -- file tree explorer
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        }
    },
  -- Rainbow colors --
    'HiPhish/nvim-ts-rainbow2',
  -- Autopairs --
    'windwp/nvim-autopairs',
  -- Telescope --
    { 'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
  -- Comment --
    'numToStr/Comment.nvim',
  -- Colorizer --
    'NvChad/nvim-colorizer.lua',
  -- LSP management --
    { 'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
          -- LSP Support
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
          -- Autocompletion
            'onsails/lspkind-nvim',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
          -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        }
    },
  -- Snippets --
    { "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
  -- Copilot --
    "github/copilot.vim",
})
