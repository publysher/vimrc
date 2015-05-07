" load Pathogen and ensure all help sections work
execute pathogen#infect()
Helptags

" highlighting
syntax on

" auto-indent
filetype plugin indent on

" when was the last time you saw vim crash?
set noswapfile

" why backups when you've got git
set nobackup

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_compact = 1

"
" MARKDOWN
"

" Set linebreak for markdown files
au Filetype mkd set linebreak

"
" RESTRUCTUREDTEXT
"

" Set linebreak for reStructuredText files
au Filetype rst set linebreak


"
" HTML
"

" Set smaller tabstop for HTML
au Filetype html call SetDefaultHTMLOptions()

function! SetDefaultHTMLOptions()
	setlocal tabstop=2 shiftwidth=2 expandtab
endfunction

"
" GO
"
let g:go_auto_type_info = 1

au Filetype go call SetDefaultGoOptions()

function! SetDefaultGoOptions() 
	setlocal tabstop=8 shiftwidth=8 

	nmap <LocalLeader>t <Plug>(go-test)
	nmap <LocalLeader>c <Plug>(go-coverage)

	:call tagbar#autoopen(0)
endfunction
