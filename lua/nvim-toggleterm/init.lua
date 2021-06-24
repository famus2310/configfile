local cwd = vim.fn.getcwd()

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = 40,

  open_mapping = [[<c-t>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = false,
  persist_size = true,
  direction = 'vertical',
  close_on_exit = false, -- already closed by vim
  --shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_win_open'
    -- see :h nvim_win_open for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border =  'curved',
    width = 180,
    height = 50,
    winblend = 0,
    highlights = {
      border = "Special",
      background = "Normal",
    }
  }
}

