execute pathogen#infect()
syntax on
filetype plugin indent on

" when was the last time you saw vim crash?
set noswapfile

" why backups when you've got git
set nobackup

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
au Filetype html set tabstop=2


"
" GO
"

" \t --> run all tests in the current workspace 
au Filetype go nmap <LocalLeader>t <Plug>(go-test)
