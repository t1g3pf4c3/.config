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

require('lualine').setup{
    options = { theme = 'gruvbox'}
}

require('Comment').setup()

require('impatient')

-- COLORSCHEME FUNCTIONS --
g.gruvbox_contrast_light='medium'
g.gruvbox_contrast_dark='soft'
g.gruvbpx_transparent_bg = 1
opt.termguicolors = true
-- opt.background = "light" -- or "light" for light mode
cmd([[colorscheme gruvbox]])
function timeTheme()
	if tonumber(os.date("%H"))>18 then 
		opt.background = "dark"
		cmd[[highlight Normal ctermbg=NONE guibg=NONE]]
	else opt.background = "light" 
	end
end
-- timeTheme()
opt.background = "dark"
cmd[[highlight Normal ctermbg=NONE guibg=NONE]]
--------------------------------
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

opt.shiftwidth = 4
opt.tabstop = 4
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


vim.opt.laststatus=3

cmd [[ map f <Plug>(easymotion-prefix) ]]
