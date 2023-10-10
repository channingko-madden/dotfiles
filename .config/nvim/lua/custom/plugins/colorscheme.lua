return {

-- Kanagawa
{
'rebelot/kanagawa.nvim',
lazy = false,
priority = 1000,
config = function()
-- load colorscheme here
require('kanagawa').setup({
        theme = "dragon",
        background = {
          dark = "wave",
          light = "lotus"
        },

      })
vim.cmd.colorscheme 'kanagawa'
end,
}
}
