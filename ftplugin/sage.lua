local map = vim.keymap.set

map('n', '<leader>p', ':vsplit<CR>:term sage %<CR><C-w>h', { desc = '[P]lay (run sage file)', silent = true })
