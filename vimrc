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

" Set linebreak for markdown files
au Filetype mkd set linebreak

" Set linebreak for reStructuredText files
au Filetype rst set linebreak

" Don't collapse folds
let g:vim_markdown_initial_foldlevel=100

" Find parent directory containing a:lookFor
" http://stackoverflow.com/questions/8225468/how-to-set-a-global-vim-project-root-path
function! FindProjectRoot(lookFor)
	let pathMaker='%:p'
	while(len(expand(pathMaker))>len(expand(pathMaker.':h')))
		let pathMaker=pathMaker.':h'
		let fileToCheck=expand(pathMaker).'/'.a:lookFor
		if filereadable(fileToCheck)||isdirectory(fileToCheck)
			return expand(pathMaker)
		endif
	endwhile
	return 0
endfunction

" Set the GOPATH and run test all
function! GoTest()
	let gopath=FindProjectRoot('src')
	let command='GOPATH=' . gopath . ' go test ./...'
	execute '!'.command
endfunction	

" \gt --> run all tests in the current workspace 
au Filetype go nnoremap <LocalLeader>gt :w<CR>:call GoTest()<CR>
