
" Required:
filetype plugin indent on
"
"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.vim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,go,html,javascript,php,rust,typescript"
let g:vim_bootstrap_editor = "vim"				" nvim or vim

if !filereadable(vimplug_exists)
if !executable("curl")
echoerr "You have to install curl or first install vim-plug yourself!"
execute "q!"
endif
echo "Installing Vim-Plug..."
echo ""
silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
let g:not_finish_vimplug = "yes"

autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.vim/plugged'))
