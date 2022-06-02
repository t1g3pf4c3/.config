local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-- Autopairs -----------------------
local npairs = require("nvim-autopairs")
npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})
------------------------------------



require('Comment').setup()

require('impatient')

opt.list = true
opt.listchars:append("space:⋅")
opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
	show_current_context = true,
    show_current_context_start = true,

}

opt.spell=true
opt.spelllang= { 'en_us', 'ru' }

opt.cursorline = true

-- Русский -----------------------
-- opt.keymap = 'russian-jcukenwin'
-- opt.iminsert = 1
-- opt.imsearch = -1
----------------------------------

opt.clipboard = 'unnamedplus'

opt.mouse='a'
opt.si = true
opt.ai = true
opt.backspace={'start','eol','indent'}

opt.shiftwidth = 2
opt.tabstop = 2
opt.autoindent = true
opt.showcmd = true
opt.title = true
opt.number = true
-- EMMET -------------------------
g.user_emmet_expandabbr_key='<C-Z>'
----------------------------------

-- Markdown ----------------------
-- opt.conceallevel=2
g.vim_markdown_folding_disabled = 1
g.vim_markdown_folding_disabled = 1
g.vim_markdown_math = 1
g.vim_markdown_strikethrough = 1
g.vim_markdown_follow_anchor = 1
cmd [[autocmd Filetype markdown setlocal wrap]]
-----------------------------------

opt.hlsearch = true
opt.backup = false
opt.cmdheight = 1

cmd [[autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>]]
g.mdip_imgdir = 'img'
g.mdip_imgdir = 'img'

opt.autochdir=true

opt.laststatus=3

cmd [[ map f <Plug>(easymotion-prefix) ]]
-- cmd [[ lcd %:p:h ]]
--
require("luasnip/loaders/from_vscode").lazy_load()
require'luasnip'.filetype_extend("javascript", {"react-native"})
