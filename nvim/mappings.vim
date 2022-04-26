norema <silent> <C-Left> :vertical resize +2<CR>
noremap <silent> <C-Right> :vertical resize -2<CR>
noremap <silent> <C-Down> :resize +1<CR>
noremap <silent> <C-Up> :resize -1<CR>
nnoremap <S-Tab> :NERDTreeToggle<CR>
nmap mp  <Plug>MarkdownPreview
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> T :Texplore <CR>
nmap <silent> mip :PasteImg<CR>
nmap  f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-s2)
nmap <silent> H :tabnext<Return>
nmap <silent> L :tabprev<Return>
nmap te :tabedit



nnoremap <C-s> :w<Return>

nnoremap <silent><C-t> >>
inoremap <silent><C-l> <C-o>l

nnoremap x "_x
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>D "_D

nmap + <C-a>
nmap - <C-x>

nmap <silent> <C-w>- :split<Return><C-w>
nmap <silent> <C-w>_ :vsplit<Return><C-w>
nmap <silent> <C-w>w q<Return>
nmap 88 ysiw*l
nmap 99 ysiw)l
"vnoremap 8 S*
"nnoremap dw bdw 
nmap <S-a> gg<S-v>G

"inoremap <C-;> <c-^>

let g:user_emmet_leader_key='<C-m>'
let g:user_emmet_expandabbr_key = '<Tab>'

nmap <silent> <A-k> :m -2<Return>
nmap <silent> <A-j> :m +1<Return>


nnoremap F <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
