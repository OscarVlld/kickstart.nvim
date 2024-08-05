-- remap to jump to the mark instead of beginning of line
vim.keymap.set('n', "'", '`', { noremap = true, silent = false })

vim.keymap.set('n', '<C-s>', '<cmd>update<cr>', { desc = 'update (save)' })
vim.keymap.set({ 'i', 'v' }, '<C-s>', '<cmd>update<cr><Esc>', { desc = 'come back to normal and update (save)' })
-- vim.keymap.set('n', '<leader>x', ':term open %<CR> <C-o>', { desc = 'e[X]ecute buffer' })
vim.keymap.set('n', '<leader>br', ':edit<cr>', { desc = '[B]uffer [R]eload' })

-- vim.keymap.set({ 'n', 'v' }, '<C-;>', 'gc', { desc = 'comment', noremap = false })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- change split sizes
vim.keymap.set('n', '<C-S-l>', '<C-w><C-char-62>', { desc = 'increase split width' })
vim.keymap.set('n', '<C-S-h>', '<C-w><C-char-60>', { desc = 'decrease split width' })
vim.keymap.set('n', '<C-S-k>', '<C-w>+', { desc = 'increase split hight' })
vim.keymap.set('n', '<C-S-j>', '<C-w>-', { desc = 'decrease split hight' })

-- next and previous buffers
vim.keymap.set('n', '<Left>', ':bprev<CR>', { desc = 'previous buffer' })
vim.keymap.set('n', '<Right>', ':bnext<CR>', { desc = 'net buffer' })

-- TOGGLE DIAGNOSTICS
-- command to toggle inline diagnostics
vim.api.nvim_create_user_command('DiagnosticsToggleVirtualText', function()
  local current_value = vim.diagnostic.config().virtual_text
  if current_value then
    vim.diagnostic.config { virtual_text = false }
  else
    vim.diagnostic.config { virtual_text = true }
  end
end, {})

-- Command to toggle diagnostics
vim.api.nvim_create_user_command('DiagnosticsToggle', function()
  local current_value = vim.diagnostic.is_disabled()
  if current_value then
    vim.diagnostic.enable()
  else
    vim.diagnostic.disable()
  end
end, {})

-- Keybindings to toggle diagnostics and virtual_text
vim.api.nvim_set_keymap('n', '<Leader>td', ':lua vim.cmd("DiagnosticsToggle")<CR>', { noremap = true, desc = '[T]oggle [D]iagnostics' })
vim.api.nvim_set_keymap('n', '<Leader>ti', ':lua vim.cmd("DiagnosticsToggleVirtualText")<CR>', { noremap = true, desc = '[T]oggle [I]nline diagnostics' })
