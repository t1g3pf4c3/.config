set mouse=a
set clipboard=unnamedplus
set nocompatible
set number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
"let loaded_matchparen = 1
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
set inccommand=split
" Tabstop
set listchars=tab:\|\ 
set list
"Ru-special
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1


set cursorline

"Spell
set spell
set spell spelllang=en_us,ru_ru

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
let g:vim_markdown_follow_anchor = 1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 2

"runtime ./theme.vim
runtime ./plug.vim
runtime ./startifyheader.vim
runtime ./mappings.vim

call lexima#add_rule({'char': '*', 'input_after': '*', 'filetype': 'markdown'})
call lexima#add_rule({'char': '<BS>', 'at': '*\%#\*', 'delete': 1, 'filetype': 'markdown'})
call lexima#add_rule({'char': '\{', 'input_after': '\}', 'filetype': 'markdown'})

colorscheme gruvbox 
let g:gruvbox_italic = 1
let g:gruvbox_contrast_light='medium'
let g:gruvbox_contrast_dark='soft'
set termguicolors
set background=light



nnoremap <F7> :call ThemeFunction()<cr>

function! ThemeFunction()
    if (&background == 'light')
        set background=dark
        echo "background -> dark"
    else
        set background=light
        echo "background -> light"
    endif
endfunction

vnoremap / <S-i>//<Esc>

function! ThemeTimer()
    if(strftime('%H')>18)
        set background=dark
    else
        set background=light
    endif
endfunction

call ThemeTimer()

let g:gruvbox_transparent_bg = 1
"hi Normal guibg=NONE ctermbg=NONE
"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,sass EmmetInstall

lua << EOF
require('Comment').setup()
EOF
