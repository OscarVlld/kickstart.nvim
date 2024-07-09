-- OIL

-- remaps
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>o', function()
  vim.cmd 'vsplit | wincmd l'
  require('oil').open()
end, { desc = '[O]il' })

return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keymaps = {
    ['<C-s>'] = '<CMD>write<CR>',
    ['<C-c>'] = '<Esc>',
  },
}
