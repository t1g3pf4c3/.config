opt = vim.opt
----------------------------
opt.clipboard = 'unnamedplus'
----------------------------
opt.mouse = 'a'
----------------------------
opt.spell = true
opt.spelllang = { 'en_us', 'ru'}
----------------------------
opt.cursorline = true
opt.cursorcolumn = true
----------------------------
opt.number = true
opt.title = true
----------------------------
opt.shiftwidth = 2
opt.tabstop = 2
opt.autoindent = true
----------------------------
opt.hlsearch = true
----------------------------
opt.autochdir = true
----------------------------
opt.ignorecase = true
opt.smartcase = true
----------------------------
opt.wrap = false

require("nvim-autopairs").setup()
require("nvim-surround").setup()
require("Comment").setup()
require("colorizer").setup()
require('cokeline').setup()

