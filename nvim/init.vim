set ignorecase
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=1
set clipboard=unnamedplus
set conceallevel=2
set mouse=a
set nocompatible
set number
syntax enable
set expandtab
set showcmd
set inccommand=split
set smarttab
"set nowrap
" Tabstop
"set listchars=tab:\|\ 
"set list
"Ru-special
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

"Spell
set spell
setlocal spell spelllang=en_us,ru_ru

highlight clear SpellBad
highlight SpellBad cterm=undercurl
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {'theme':'base'},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

let g:vim_markdown_conceal = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_follow_anchor =1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 2

"runtime ./theme.vim
runtime ./plug.vim
runtime ./startifyheader.vim
runtime ./mappings.vim

call lexima#add_rule({'char': '*', 'input_after': '*', 'fileype':'markdown'})
call lexima#add_rule({'char': '\{', 'input_after': '\}', 'filetype': 'markdown'})
let g:gruvbox_italic=1
colorscheme gruvbox


"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,sass EmmetInstall
