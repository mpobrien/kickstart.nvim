local map = vim.keymap.set

map('n', '<S-h>', ':bprev<Enter>', { desc = 'Switch to next buffer' })
map('n', '<S-l>', ':bnext<Enter>', { desc = 'Switch to prev buffer' })

map('n', '<leader>h', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = 'Toggle inlay hints' })

-- Toggling comments
map('n', '<leader>/', ':norm gcc<CR>', { remap = true, desc = 'Toggle comments' })
map('v', '<leader>/', 'gc', { remap = true, desc = 'Toggle comments' })

-- Alt + jk to move line up/down
vim.keymap.set('n', '<A-j>', ':m .+1<cr>==', { noremap = true, silent = true, desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<cr>==', { noremap = true, silent = true, desc = 'Move line up' })
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<cr>==gi', { noremap = true, silent = true, desc = 'Move line down (insert mode)' })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<cr>==gi', { noremap = true, silent = true, desc = 'Move line up (insert mode)' })
vim.keymap.set('x', '<A-j>', ":m '>+1<cr>gv=gv", { noremap = true, silent = true, desc = 'Move block down' })
vim.keymap.set('x', '<A-k>', ":m '<-2<cr>gv=gv", { noremap = true, silent = true, desc = 'Move block up' })
