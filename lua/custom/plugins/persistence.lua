-- persistence
-- https://github.com/windwp/nvim-autopairs

---@module 'lazy'
---@type LazySpec
return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
}
