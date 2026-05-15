return {
  'mikavilpas/yazi.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true },
  },
  keys = {
    {
      '<leader>-',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      '<leader>=',
      '<cmd>Yazi toggle<cr>',
      desc = 'Resume the last yazi session',
    },
  },
  ---@type YaziConfig | {}
  opts = {
    keymaps = {
      show_help = '<f1>',
    },
    highlight_hovered_buffers_in_same_directory = false,
  },
  init = function()
    -- Match telescope / other floating window themeing.
    vim.api.nvim_set_hl(0, 'YaziFloat', {
      link = 'NormalFloat',
    })
  end,
}
