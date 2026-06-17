-- leap.nvim
-- https://codeberg.org/andyg/leap.nvim
-- https://github.com/LazyVim/LazyVim/issues/2379#issuecomment-1898491969
--
---@module 'lazy'
---@type LazySpec
return {
  'leap.nvim',
  url = 'https://codeberg.org/andyg/leap.nvim.git',
  config = function(_, opts)
    local leap = require 'leap'
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.add_default_mappings(true)
    vim.keymap.del({ 'x', 'o' }, 'x')
    vim.keymap.del({ 'x', 'o' }, 'X')
    vim.keymap.set('n', 's', function() require('leap').leap { target_windows = { vim.api.nvim_get_current_win() } } end)
  end,
}
