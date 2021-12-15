vim.g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_gitignore = 0
vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}
vim.g.nvim_tree_icons = {
 default= '',
 symlink= '',
 git= {
   unstaged= "✗",
   staged= "✓",
   unmerged= "",
   renamed= "➜",
   untracked= "★",
   deleted= "",
   ignored= "◌"
   },
 folder= {
   arrow_open= "",
   arrow_closed= "",
   default= "",
   open= "",
   empty= "",
   empty_open= "",
   symlink= "",
   symlink_open= "",
   },
   lsp= {
     hint= "",
     info= "",
     warning= "",
     error= "",
   }
}
--vim.g.nvim_tree_auto_ignore_ft = {'dashboard'} --empty by default, don't auto open tree on specific filetypes.
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
local list = {
	-- ["<CR>"] = ":YourVimFunction()<cr>",
	-- ["u"] = ":lua require'some_module'.some_function()<cr>",

	-- default mappings
	{key = "<CR>",           cb = tree_cb("edit")},
	{key = "o",              cb = tree_cb("edit")},
	{key = "l",              cb = tree_cb("edit")},
	{key = "<2-LeftMouse>",  cb = tree_cb("edit")},
	{key = "<2-RightMouse>", cb = tree_cb("cd")},
	{key = "O",              cb = tree_cb("cd")},
	{key = "v",              cb = tree_cb("vsplit")},
	{key = "s",              cb = tree_cb("split")},
	{key = "<C-t>",          cb = tree_cb("tabnew")},
	{key = "<",              cb = tree_cb("prev_sibling")},
	{key = ">",              cb = tree_cb("next_sibling")},
	{key = "<BS>",           cb = tree_cb("close_node")},
	{key = "h",              cb = tree_cb("close_node")},
	{key = "<S-CR>",         cb = tree_cb("close_node")},
	{key = "<Tab>",          cb = tree_cb("preview")},
	{key = "A",              cb = tree_cb("toggle_ignored")},
	{key = "I",              cb = tree_cb("toggle_dotfiles")},
	{key = "R",              cb = tree_cb("refresh")},
	{key = "a",              cb = tree_cb("create")},
	{key = "d",              cb = tree_cb("remove")},
	{key = "r",              cb = tree_cb("rename")},
	{key = "<C-r>",          cb = tree_cb("full_rename")},
	{key = "x",              cb = tree_cb("cut")},
	{key = "c",              cb = tree_cb("copy")},
	{key = "p",              cb = tree_cb("paste")},
	{key = "[c",             cb = tree_cb("prev_git_item")},
	{key = "]c",             cb = tree_cb("next_git_item")},
	{key = "P",              cb = tree_cb("dir_up")},
	{key = "q",              cb = tree_cb("close")},
}
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = true,
  ignore_ft_on_setup  = {'dashboard'},
  auto_close          = false,
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = false,
    auto_open = false,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = ":echo 'HEllo'",
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = list
    }
  }
}

