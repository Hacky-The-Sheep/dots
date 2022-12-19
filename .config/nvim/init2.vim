"  ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
"  ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
"  ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
"  ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
"  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

"Vim Plug 
call plug#begin()

	Plug 'SirVer/ultisnips'
	"Plug 'dense-analysis/ale'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0'}
	Plug 'itchyny/lightline.vim'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'airblade/vim-gitgutter'
	Plug 'tmhedberg/SimpylFold'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'preservim/tagbar'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"NeoTree Plugins
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'nvim-tree/nvim-web-devicons'

	"USELESS PLUGINS
	Plug 'tamton-aquib/duck.nvim'

	"VimWiki
	Plug 'vimwiki/vimwiki'

	"LaTeX
	Plug 'lervag/vimtex'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

"Q.O.L Settings
set cursorline
set relativenumber
colorscheme catppuccin-mocha
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme = 'catppuccin'

" Enable Folding w/ spacebar
set foldmethod=indent
set foldlevel=99

" Python Settings
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

"KEYBOARD SHORTCUTS
""Python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

""Folding
nnoremap <space> za
""Toggle TagBar
nmap <F8> :TagbarToggle<CR>
""FZF
nmap <c-f> :Telescope find_files<CR>
""The Duck 🦆
nmap <c-d> :lua require("duck").hatch("🦆")<CR>
""🌲 NeoTree 
nmap <c-n> :NeoTreeShowToggle<CR>
""Select Autocomplete on Enter
inoremap <silent><expr><CR> coc#pum#visible() ? coc#pum#confirm(): "\<CR>"
""LaTeX
nmap <F7> :LLPStartPreview<CR>

"VimWiki
let g:vimwiki_list = [{'path': '~/Documents/VimWiki/',
			\ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_global_ext = 0

nnoremap <SPACE> <Nop>
let mapleader = " "

" Lightline
let g:lightline = {
\ 	'colorscheme': 'rosepine',
\}


"LaTeX
" This is necessary for VimTeX to load properly. The "indent" is optional.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","

" Live Preview
let g:livepreview_previewer = 'zathura'
