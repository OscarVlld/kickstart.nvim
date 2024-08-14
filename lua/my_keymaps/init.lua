-- NAVIGATION

vim.keymap.set('n', '<leader><tab>', '<C-6>', { desc = 'alternate file' })

-- remap to jump to the mark instead of beginning of line
vim.keymap.set('n', "'", '`', { noremap = true, silent = false })

-- Keybinds to make split navigation easier.
--  Use Superkey+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- change split sizes
vim.keymap.set('n', '<C-S-l>', '<C-w><C-char-62>', { desc = 'increase split width' })
vim.keymap.set('n', '<C-S-h>', '<C-w><C-char-60>', { desc = 'decrease split width' })
vim.keymap.set('n', '<C-S-k>', '<C-w>+', { desc = 'increase split hight' })
vim.keymap.set('n', '<C-S-j>', '<C-w>-', { desc = 'decrease split hight' })

-- BUFFER
vim.keymap.set('n', '<C-s>', '<cmd>update<cr>', { desc = 'update (save)' })
vim.keymap.set({ 'i', 'v' }, '<C-s>', '<cmd>update<cr><Esc>', { desc = 'come back to normal and update (save)' })
vim.keymap.set('n', '<leader>br', ':edit<cr>', { desc = '[B]uffer [R]eload' })

-- TOGGLE

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
  local current_value = vim.diagnostic.is_disabled() -- deprecated, use vim.diagnostic.is_enabled()
  if current_value then
    vim.diagnostic.enable()
  else
    vim.diagnostic.disable() -- deprecated, use vim.diagnostic.enable(false,...)
  end
end, {})

-- Keybindings to toggle diagnostics and virtual_text
vim.api.nvim_set_keymap('n', '<Leader>td', ':lua vim.cmd("DiagnosticsToggle")<CR>', { noremap = true, desc = '[T]oggle [D]iagnostics' })
vim.api.nvim_set_keymap('n', '<Leader>ti', ':lua vim.cmd("DiagnosticsToggleVirtualText")<CR>', { noremap = true, desc = '[T]oggle [I]nline diagnostics' })

-- toogle spellcheck
vim.keymap.set('n', '<Leader>tS', function()
  vim.o.spell = not vim.o.spell
  print('spell: ' .. tostring(vim.o.spell))
end, { desc = '[T]oogle [S]pellcheck' })

-- OTHER

-- faster code comment
vim.keymap.set('n', '<Leader>k', 'gcc', { remap = true, silent = false })
vim.keymap.set('v', '<Leader>k', 'gc', { remap = true, silent = false })

-- KEYMAPS FROM KICKSTART
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
