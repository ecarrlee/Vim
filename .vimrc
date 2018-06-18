" Sources [1]https://dougblack.io/words/a-good-vimrc.html
" [2] https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" [3]https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/
" [4] https://www.makeuseof.com/tag/5-things-need-put-vim-config-file/
" [5]https://www.makeuseof.com/tag/5-things-need-put-vim-config-file://jeffkreeftmeijer.com/vim-number/

:set number 
:set relativenumber "toggle hybrid line numbers 
syntax enable "enable syntax processing
set expandtab
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in tab when editing
set shiftwidth=4
set number "show line numbers
set showcmd "show command in bottom bar
" set cursorline "highlight current line
filetype indent on "load filetype-specific indent files

set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when we need to.
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch  " highlight matches
"turn off search highlight

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=i
set tm=500

" Pperly disable sound on errors on MacVim
if has("gui_macvim")
     autocmd GUIEnter * set vb t_vb=
     endif

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Linebreak on 80 characters
set lbr
set autoindent
set textwidth=80
set smartindent
set wrap "Wrap lines
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%79v.\+/
set title " Set the windows title, reflecting the file currently being edited.
