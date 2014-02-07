execute pathogen#infect()
syntax on
filetype plugin indent on

" when was the last time you saw vim crash?
set noswapfile

" why backups when you've got git
set nobackup

" run gofmt when saving Go files
autocmd BufWritePre *.go Fmt

" \i --> import package under cursor
au Filetype go nnoremap <buffer> <LocalLeader>i :exe 'Import ' . expand('<cword>')<CR>

" \t --> run all tests in the current workspace
au Filetype go nnoremap <LocalLeader>gt :!clear; go test ./...<CR>

" Set linebreak for markdown files
au Filetype mkd set linebreak

" Don't collapse folds
let g:vim_markdown_initial_foldlevel=100
