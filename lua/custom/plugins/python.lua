---@module 'lazy'
---@type LazySpec
return {
  'jglasovic/venv-lsp.nvim', -- Auto-detect virtual environments
  config = function() require('venv-lsp').setup() end,
}
