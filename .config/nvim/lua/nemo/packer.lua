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

local packer_bootstrap = ensure_packer()

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true})
vim.api.nvim_create_autocmd("BufWritePost", {
    command = "source <afile> | PackerSync",
    group = packer_group,
    pattern = vim.fn.expand("packer.lua"),
})


local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
    return
end

local packer_util_ok, packer_util = pcall(require, "packer.utils")
if not packer_ok then
    return
end

packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        -- Colortheme --
        use 'samueljoli/cyberpunk.nvim'
        -- File Explorer --
        use { 'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons',
            },
            tag = 'nightly'
        }
        -- Status Bar --
        use { 'nvim-lualine/lualine.nvim',
            requires = {
                'nvim-tree/nvim-web-devicons',
                opt = true
            }
        }
        -- Comment --
        use 'numToStr/Comment.nvim'
        -- Colorizer --
        use 'NvChad/nvim-colorizer.lua'
        -- Treesitter (color text) --
        use { 'nvim-treesitter/nvim-treesitter',
            run = function()
                pcall(require('nvim-treesitter.install').update({ width_sync = true }))
        end,
        }
        use { 'windwp/nvim-ts-autotag',
            after='nvim-treesitter'
        }   -- Close balise html and other
        -- Telescope --
        use { 'nvim-telescope/telescope.nvim',
            tag = '0.1.4',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        -- Lsp --
        use {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig',
        }
    end,
    config = {
        display = {
        open_fn = function()
        return require('packer.util').float({ border = 'single' })
        end
    }
}})
