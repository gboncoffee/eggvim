" Title:       eggvim.vim
" Description: EGG plugin for Vim
" Last Change: 8 January 2024
" Mainteiner:  Gabriel G. de Brito https://github.com/gboncoffee
" Location:    plugin/eggvim.vim

if exists('g:autoloaded_egg')
	finish
endif

let g:autoloaded_egg = 1

" Section:     Commands

command! -complete=custom,eggvim#ListArchComplete -nargs=? Egg call eggvim#Egg(<q-args>)
