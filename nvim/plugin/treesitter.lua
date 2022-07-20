require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>v", --init selectiin
      node_incremental = "<CR>", -- upper node
      scope_incremental = "<TAB>", -- upper scope
      node_decremental = "<S-TAB>", -- down node
    },
  },
})
