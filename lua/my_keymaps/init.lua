-- remap to jump to the mark instead of beginning of line
vim.keymap.set('n', "'", '`', { noremap = true, silent = false })

vim.keymap.set('n', '<C-s>', '<cmd>update<cr>', { desc = 'update (save)' })
vim.keymap.set({ 'i', 'v' }, '<C-s>', '<cmd>update<cr><Esc>', { desc = 'come back to normal and update (save)' })
-- vim.keymap.set('n', '<leader>x', ':term open %<CR> <C-o>', { desc = 'e[X]ecute buffer' })
vim.keymap.set('n', '<leader>x', '<cmd>open %<cr>', { desc = 'e[X]ecute buffer' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
