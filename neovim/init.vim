let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()
" Plugins go here

Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'haishanh/night-owl.vim'
Plug 'gryf/pylint-vim'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

call plug#end()


" Night owl theme config
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl


" Lighline config
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }


" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" jedi config
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#show_call_signatures = "1"


" Standard configs
:set number
:set updatetime=100

nnoremap <C-n> :NERDTree<CR>
:tnoremap <Esc> <C-\><C-n>

