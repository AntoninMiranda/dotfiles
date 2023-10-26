local opts = {noremap = true, silent = true}
local key = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Exit and Save --
key("n", "<leader>ww", ":w!<CR>", opts)
key("n", "<leader>qq", ":q!<CR>", opts)
key("n", "<leader>wq", ":wq!<CR>", opts)

-- Navigation in split --
key("c", "wc", "wincmd", opts)

-- NvimTree short command --
key("c", "ntt", "NvimTreeToggle", opts)
key("c", "nto", "NvimTreeOpen", opts)
