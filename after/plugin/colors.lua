function ColorMyPencils(color)
    color = color or "nordfox"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})

end

ColorMyPencils()

require('nightfox').setup({
    options = {
        transparent = true,
        styles = {
            comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
        }
    },
    palettes = {
        nordfox = {
            -- A palette also defines the following:
            --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
            --
            -- These are the different foreground and background shades used by the theme.
            -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
            -- incrementally lighter versions.
            fg2 = "#9d84db",

            -- sel is different types of selection colors.
            -- sel0 = "#3e4a5b", -- Popup bg, visual selection bg
            -- sel1 = "#4f6074", -- Popup sel bg, search bg

            -- comment is the definition of the comment color.
            comment = "#3477bb",
        },
    },
    specs = {
        nordfox = {
            syntax = {
            }
        }
    }
})

-- setup must be called before loading
vim.cmd("colorscheme nordfox")
