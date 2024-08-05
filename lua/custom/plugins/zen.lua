-- ZEN

vim.keymap.set('n', '<Leader>z', ':ZenMode<CR>', { desc = '[Z]en mode', silent = true })

return {
  'folke/zen-mode.nvim',
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
