vim.g.nvim_tree_auto_open = 1 --0 by default, opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_hide_dotfiles = 1 -- 0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_auto_close = 1 -- 0 by default, closes the tree when it's the last window
vim.g.nvim_tree_highlight_opened_files = 1
--vim.g.nvim_tree_auto_ignore_ft = {'dashboard'} --empty by default, don't auto open tree on specific filetypes.
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    vim.g.nvim_tree_bindings = {
      -- ["<CR>"] = ":YourVimFunction()<cr>",
      -- ["u"] = ":lua require'some_module'.some_function()<cr>",

      -- default mappings
      ["<CR>"]           = tree_cb("edit"),
      ["o"]              = tree_cb("edit"),
      ["l"]              = tree_cb("edit"),
      ["<2-LeftMouse>"]  = tree_cb("edit"),
      ["<2-RightMouse>"] = tree_cb("cd"),
      ["O"]              = tree_cb("cd"),
      ["v"]              = tree_cb("vsplit"),
      ["s"]              = tree_cb("split"),
      ["<C-t>"]          = tree_cb("tabnew"),
      ["<"]              = tree_cb("prev_sibling"),
      [">"]              = tree_cb("next_sibling"),
      ["<BS>"]           = tree_cb("close_node"),
      ["h"]              = tree_cb("close_node"),
      ["<S-CR>"]         = tree_cb("close_node"),
      ["<Tab>"]          = tree_cb("preview"),
      ["H"]              = tree_cb("toggle_ignored"),
      ["I"]              = tree_cb("toggle_dotfiles"),
      ["R"]              = tree_cb("refresh"),
      ["a"]              = tree_cb("create"),
      ["d"]              = tree_cb("remove"),
      ["r"]              = tree_cb("rename"),
      ["<C-r>"]          = tree_cb("full_rename"),
      ["x"]              = tree_cb("cut"),
      ["c"]              = tree_cb("copy"),
      ["p"]              = tree_cb("paste"),
      ["[c"]             = tree_cb("prev_git_item"),
      ["]c"]             = tree_cb("next_git_item"),
      ["P"]              = tree_cb("dir_up"),
      ["q"]              = tree_cb("close"),
    }
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