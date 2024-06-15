-- VIMTEX
return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-pdf',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        '-shell-escape',
      },
    } -- VimTeX configuration goes here
    -- vim.g.vimtex_view_method = 'skim'
    -- -- vim.g.vimtex_view_general_viewer = 'skim'
    -- vim.g.vimtex_view_general_viewer = 'open -a Skim'
    -- --let g:vimtex_view_general_viewer = 'open -a Skim'
    -- vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
    -- -- vim.g.vimtex_view_skim_sync = 1
    -- vim.g.vimtex_view_skim_activate = 1
    -- let g:vimtex_view_skim_sync = 1 # Value 1 allows forward search after every successful compilation
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_view_general_viewer = 'open -a skim'
    -- vim.g.vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
    -- vim.g.vimtex_compiler_latexmk = { 'build_dir' : '', 'callback' : 1, 'continuous' : 1, 'executable' : 'latexmk', 'hooks' : [], 'options' : [   '-pdf',   '-interaction=nonstopmode',   '-synctex=1', ]
  end,
}
