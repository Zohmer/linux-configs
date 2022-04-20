" Loads vim-plug
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

call plug#end()


" Night owl theme config
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl


" Standard configs
:set number


