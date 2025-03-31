local map = vim.keymap.set

map('n', '<S-h>', ':bprev<Enter>', { desc = 'Switch to next buffer' })
map('n', '<S-l>', ':bnext<Enter>', { desc = 'Switch to prev buffer' })

map('n', '<leader>h', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = 'Toggle inlay hints' })

-- Toggling comments
map('n', '<leader>/', ':norm gcc<CR>', { remap = true, desc = 'Toggle comments' })
map('v', '<leader>/', 'gc', { remap = true, desc = 'Toggle comments' })
map('n', '<leader>h', ':ClangdSwitchSourceHeader<CR>', { remap = true, desc = 'Switch source/header' })

-- Alt + jk to move line up/down
-- map('n', '<A-j>', ':m .+1<cr>==', { noremap = true, silent = true, desc = 'Move line down' })
-- map('n', '<A-k>', ':m .-2<cr>==', { noremap = true, silent = true, desc = 'Move line up' })
-- map('i', '<A-j>', '<Esc>:m .+1<cr>==gi', { noremap = true, silent = true, desc = 'Move line down (insert mode)' })
-- map('i', '<A-k>', '<Esc>:m .-2<cr>==gi', { noremap = true, silent = true, desc = 'Move line up (insert mode)' })
-- map('x', '<A-j>', ":m '>+1<cr>gv=gv", { noremap = true, silent = true, desc = 'Move block down' })
-- map('x', '<A-k>', ":m '<-2<cr>gv=gv", { noremap = true, silent = true, desc = 'Move block up' })

-- Copy/paste to/from system clipboard
map({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
map({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = 'Yank line to system clipboard' })
map({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard after cursor' })
map({ 'n', 'v' }, '<leader>P', '"+P', { desc = 'Paste from system clipboard before cursor' })
map('n', '<leader>e', function()
  vim.diagnostic.open_float(0, { scope = 'line' })
end)
-- map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>
