call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'ekickx/clipboard-image.nvim'

Plug 'mattn/emmet-vim'

Plug 'morhetz/gruvbox'

Plug 'https://github.com/preservim/nerdtree' 
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'cohama/lexima.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
"Plug 'justinmk/vim-sneak'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

