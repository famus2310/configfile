require('nvim-treesitter.configs').setup({
	-- NOTE: Place your languages here!
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  },
	ensure_installed = 'all',
	highlight = { enable = true },
	--indent = { enable = true }, --this one still buggy idk why
})
