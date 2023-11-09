local colorizer_status, colorizer = pcall(require, 'nvim-colorizer')
if not colorizer_status then
    return
end

colorizer.setup({
      "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local colorizer = require("colorizer")

    colorizer.setup({
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact",
        "css",
        "scss",
        "html",
        "lua",
      },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = "both", -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        virtualtext = "■",
        sass = { enable = true, parsers = { css } }, -- Enable sass colors
      },
      -- all the sub-options of filetypes apply to buftypes
      buftypes = {},
    })
  end,
})
