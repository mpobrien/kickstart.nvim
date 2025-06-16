local map = vim.keymap.set

map('n', '<S-h>', ':bprev<Enter>', { desc = 'Switch to next buffer' })
map('n', '<S-l>', ':bnext<Enter>', { desc = 'Switch to prev buffer' })
map('n', '<C-S-h>', ':tabprev<Enter>', { desc = 'Switch to next tab' })
map('n', '<C-S-l>', ':tabnext<Enter>', { desc = 'Switch to prev tab' })

map('n', '<leader>h', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = 'Toggle inlay hints' })

-- Toggling comments
map('n', '<leader>/', ':norm gcc<CR>', { remap = true, desc = 'Toggle comments' })
map('v', '<leader>/', 'gc', { remap = true, desc = 'Toggle comments' })
map('n', '<leader>ch', ':ClangdSwitchSourceHeader<CR>', { remap = true, desc = 'Switch source/header' })
map('n', '<leader>.', ':b#<CR>', { remap = true, desc = 'Switch source/header' })

-- Alt + jk to move line up/down
-- map('n', '<A-j>', ':m .+1<cr>==', { noremap = true, silent = true, desc = 'Move line down' })
-- map('n', '<A-k>', ':m .-2<cr>==', { noremap = true, silent = true, desc = 'Move line up' })
-- map('i', '<A-j>', '<Esc>:m .+1<cr>==gi', { noremap = true, silent = true, desc = 'Move line down (insert mode)' })
-- map('i', '<A-k>', '<Esc>:m .-2<cr>==gi', { noremap = true, silent = true, desc = 'Move line up (insert mode)' })
-- map('x', '<A-j>', ":m '>+1<cr>gv=gv", { noremap = true, silent = true, desc = 'Move block down' })
-- map('x', '<A-k>', ":m '<-2<cr>gv=gv", { noremap = true, silent = true, desc = 'Move block up' })

-- Git Linker: get github link (upstream) for current selected line or range
map({ 'n', 'v' }, '<leader>gy', ':GitLink remote=upstream<CR>', { desc = 'Get github upstream link for current selected line or range' })

-- Copy/paste to/from system clipboard
map({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
map({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = 'Yank line to system clipboard' })
map({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard after cursor' })
map({ 'n', 'v' }, '<leader>P', '"+P', { desc = 'Paste from system clipboard before cursor' })
map('n', '<leader>e', function()
  vim.diagnostic.open_float(0, { scope = 'line' })
end)

map('n', '<leader>dl', "<cmd>lua require'dap'.step_into()<CR>", { desc = 'Debugger step into' })
map('n', '<leader>dj', "<cmd>lua require'dap'.step_over()<CR>", { desc = 'Debugger step over' })
map('n', '<leader>dk', "<cmd>lua require'dap'.step_out()<CR>", { desc = 'Debugger step out' })
map('n', '<leader>dc', "<cmd>lua require'dap'.continue()<CR>", { desc = 'Debugger continue' })
map('n', '<leader>db', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = 'Debugger toggle breakpoint' })
map('n', '<leader>de', "<cmd>lua require'dap'.terminate()<CR>", { desc = 'Debugger reset' })
map('n', '<leader>dr', "<cmd>lua require'dap'.run_last()<CR>", { desc = 'Debugger run last' })

-- map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>
--

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
