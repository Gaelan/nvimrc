" vim:sw=2:ts=2:foldmarker={,}:foldlevel=0:foldmethod=marker

" Packages {
	set runtimepath+=/Users/Gaelan/.config/nvim/dein/repos/github.com/Shougo/dein.vim

	call dein#begin('/Users/Gaelan/.config/nvim/dein')
		call dein#add('Shougo/dein.vim')

		call dein#add('Shougo/neosnippet.vim')
		call dein#add('Shougo/neosnippet-snippets')
		call dein#add('Shougo/deoplete.nvim')
		call dein#add('Shougo/vimshell')
		call dein#add('altercation/vim-colors-solarized')
		call dein#add('scrooloose/syntastic.git')
		call dein#add('vim-airline/vim-airline')
		call dein#add('vim-airline/vim-airline-themes')
		call dein#add('editorconfig/editorconfig-vim')
		call dein#add('tpope/vim-vinegar')
		call dein#add('tpope/vim-surround')

		" Rust {
			call dein#add('racer-rust/vim-racer')
			call dein#add('rust-lang/rust.vim')
		" }

		" Javascript + derivatives {
			call dein#add('pangloss/vim-javascript')
			call dein#add('mxw/vim-jsx')
			call dein#add('HerringtonDarkholme/yats.vim')
			call dein#add('kchmck/vim-coffee-script')
		"	}
	
		" Ruby/Rails {
			call dein#add('tpope/vim-rails')
		" }
	call dein#end()

	filetype plugin indent on
	syntax enable

	if dein#check_install()
		call dein#install()
	endif
" }

" Core {
	set clipboard+=unnamedplus
	set hidden
	set ts=4
	set sw=4
" }

" Airline {
	let g:airline_powerline_fonts = 1
  let g:airline_theme = "solarized"
	let g:airline#extensions#tabline#enabled = 1
" }

" Deoplete {
	let g:deoplete#enable_at_startup = 1
" }

" Racer {
	let g:racer_experimental_completer = 1
" }

" Solarized {
	colorscheme solarized
" }

" Syntastic {
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
" }
