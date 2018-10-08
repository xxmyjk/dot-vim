" Vundle Config
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'molokai'
    Plugin 'The-NERD-tree'
    " Plugin 'webBrowser'
    Plugin 'tpope/vim-sleuth'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'rdnetto/YCM-Generator'
    Plugin 'mattn/emmet-vim'
    Plugin 'vim-syntastic/syntastic'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'Yggdroot/LeaderF'
call vundle#end()
filetype plugin indent on

" basic editor behaivor
syntax on
colors molokai
set nobackup
set noswapfile
set formatoptions=tcqro
set bsdir=buffer
set foldmethod=syntax
set nofoldenable
set number
set ruler
set incsearch
set hls
set backspace=indent,eol,start
set fileencodings=utf-8,gbk
set mouse=a
set ignorecase
set smartcase

" tab & indent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" yank to clipboard & auto slect and paste
if has("clipboard")
    set clipboard=unnamed " copy to the system clipboard
    set clipboard+=autoselect

    if has("unnamedplus") " X11 support
        set clipboard+=unnamedplus
        set clipboard+=autoselectplus
    endif
endif

" The-NERD-tree
let NERDTreeWinPos='left'
let NERDTreeAutoCenter=1
let NERDTreeShowLineNumber=1
noremap <F6> :NERDTreeToggle<CR>

" for nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

