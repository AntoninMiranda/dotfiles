local scheme_status, scheme = pcall(require, 'cyberpunk')
if not scheme_status then
    return
end


scheme.setup({
    theme = 'dark'
})

vim.cmd[[ highlight Normal guibg=none ]]
vim.cmd[[ highlight CursorLineNr guibg=#ff3270 ]]
vim.cmd[[ highlight CursorLine guibg=none ]]
vim.cmd[[ highlight CursorLineNr gui=bold guifg=Red guibg=none ]]
