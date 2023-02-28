local function map(mode, keys, command)
	vim.api.nvim_set_keymap(mode, keys, command, { noremap = true, silent = true })
end

-- Normal Mode
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprev<CR>")

-- Split Window
map("n", "sh", ":split<CR>") --Right
map("n", "sv", ":vs<CR>") --Below

-- Save
map("i", "<C-S>", "<ESC>:w<CR><Insert>")
map("n", "<C-S>", ":w<CR>")

-- Exit Normal Mode
map("i", "jj", "<ESC>")
map("i", "jk", "<ESC>")

-- NeoTree
map('n', '`', '<CMD>NeoTreeFocusToggle<CR>')
map('n', '<A-`>', '<CMD>NeoTreeFocus<CR>')

-- Telescope
map('n', '<leader><space>', ':Telescope<CR>')
map('n', 'ff', ':Telescope find_files<CR>')

-- Comment
map('n', '<C>/', '<Plug>(comment_toggle_linewise_current)')
map('v', '<C>/', '<Plug>(comment_toggle_linewise_visual)')

function _G.set_toggleterm_keybind()
  local opts = { buffer = 0 }
  map('t', '<Esc>', [[<C-\><C-n>]], opts)
  map('t', '<A-t>', '<cmd>ToggleTerm<cr>', opts)
end

vim.cmd('autocmd! TermOpen term://*toggleterm* lua set_toggleterm_keybind()')

map('n', '<A-t>', '<cmd>ToggleTerm direction=float<cr>')
