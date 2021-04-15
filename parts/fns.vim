
"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
function s:setupWrapping()
set wrap
set wm=2
set textwidth=79
endfunction
endif



function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction



function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
execute 'h '.expand('<cword>')
else
call CocAction('doHover')
endif
endfunction
