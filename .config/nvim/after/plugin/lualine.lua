local bar_status, bar = pcall(require, 'lualine')
if not bar_status then
    return
end

bar.setup({
    options = {
        theme = 'auto',
        disabled_filetypes = {
            statusline = {
                'dashboard',
                'NvimTree'
            },
            winbar = {
                'dashboard',
                'NvimTree'
            }
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = { 'filetype' },
        lualine_z = { 'progress' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    extensions = {}
})
