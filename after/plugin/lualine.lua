local status, lualine = pcall(require, 'lualine')
if not status then
  return
end

local custom_gruvbox = require 'lualine.themes.gruvbox'

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.c.bg = '#292828'

lualine.setup {
  options = { theme = custom_gruvbox, disabled_filetypes = { 'NeoTree' } },
}
