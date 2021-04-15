
"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/CSApprox'
Plug 'Raimondi/delimitMate'
Plug 'avelino/vim-bootstrap-updater'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'preservim/nerdcommenter'
if isdirectory('/usr/local/opt/fzf')
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
    let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" Vim lsc
Plug 'natebosch/vim-lsc'

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" c
"Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
"Plug 'ludwig/split-manpage.vim'


" go
"" Go Lang Bundle
"Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}


" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'


" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'


" php
"" PHP Bundle
Plug 'arnaud-lb/vim-php-namespace'


" rust
" Vim racer
"Plug 'racer-rust/vim-racer'

" Rust.vim
Plug 'rust-lang/rust.vim'


" typescript
Plug 'leafgarland/typescript-vim'
"Plug 'HerringtonDarkholme/yats.vim'

" dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc-dart'

" flutter
Plug 'thosakwe/vim-flutter'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc tslint
"Plug 'neoclide/coc-tslint'

" nerdtree icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"*****************************************************************************
"*****************************************************************************
"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
source ~/.vimrc.local.bundles
endif

call plug#end()
