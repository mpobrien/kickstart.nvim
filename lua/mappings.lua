local map = vim.keymap.set

map('n', '<S-h>', ':bprev<Enter>', { desc = 'Switch to next buffer' })
map('n', '<S-l>', ':bnext<Enter>', { desc = 'Switch to prev buffer' })

map('n', '<leader>h', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = 'Toggle inlay hints' })

-- Toggling comments
map('n', '<leader>/', ':norm gcc<CR>', { remap = true }, { desc = 'Toggle comments' })
map('v', '<leader>/', 'gc', { remap = true }, { desc = 'Toggle comments' })
