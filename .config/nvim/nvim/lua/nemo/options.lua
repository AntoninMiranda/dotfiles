local opt = {
    number = true, -- line number
    relativenumber = true, -- line number relative
    list = true, -- active replacing
    listchars = "eol:↓,trail:●,space:·", -- spwan char to replace space trail etc
    fileencoding = "utf-8", -- set encoding
    tabstop=4, -- set tab = 4 space
    shiftwidth=4,
    smartindent = true,
    expandtab = true,
    scrolloff = 10, -- line under cursor tp scroll
    sidescrolloff = 10,
    mouse = "a", -- active mouse
    cursorline = true, -- show cursor line position
    colorcolumn = "80", -- line to coding style
    signcolumn = "yes",
    showmode = false,
    splitright = true, -- :vsplit go right
    splitbelow = true,
    laststatus = 2,
    updatetime = 1000, -- auto update nvim
    termguicolors = true,
-- Saving --
    -- remove backup options --
    backup = false,
    writebackup = false,
    swapfile = false,
    -- set undodir --
    undodir = vim.fn.expand("~") .. "/.config/nvim/lua/nemo/undodir",
    undofile = true,
    undolevels = 666, -- save 666 undo command
-- Search --
    ignorecase = true,
    smartcase = true,
    hlsearch = false,
-- Completion --
    wildignore = "*.o", -- ignore .o for C
    completeopt = { "menu", "menuone", "noselect" }, -- nvim-cmp
-- Error --
    visualbell = true,
    errorbells = false,
}

for cmd, value  in pairs(opt) do
    vim.opt[cmd] = value
end
