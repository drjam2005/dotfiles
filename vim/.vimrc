let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex', { 'tag': 'v2.15' }

Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'drsooch/gruber-darker-vim'
Plug 'chriskempson/base16-vim'
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'npm install'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'rktjmp/lush.nvim'
Plug 'zenbones-theme/zenbones.nvim'
Plug 'webhooked/kanso.nvim'
Plug 'https://codeberg.org/turysaz/vim-zenmode.git'
Plug 'AlessandroYorba/Alduin'
Plug 'jalvesaq/cmp-vim-r'
Plug 'jalvesaq/Nvim-R'
Plug 'mattn/emmet-vim'
Plug 'ficd0/ashen.nvim'

Plug 'jlanzarotta/colorSchemeExplorer'
" Plug 'drjam2005/kitty-sync.vim'
Plug 'drjam2005/vim-setmake.vim'
Plug 'kaarmu/typst.vim'

call plug#end()

inoremap <C-Space> <C-x><C-o><C-n><C-n>
let g:lsp_signature_help_enabled = 0
let g:lsp_signature_help_delay = 0
let g:lsp_peek_definition_enabled = 0

let g:asyncomplete_auto_completeopt = 0
let g:lsp_show_message_request_enabled = 0

nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
nnoremap K :LspHover<CR>

autocmd FileType * setlocal omnifunc=lsp#complete
" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_forward_search_on_start = 0
let g:vimtex_compiler_latexmk = { 'aux_dir' : '/home/james/.texfiles', 'build_dir': 'out'}

let g:lsp_document_highlight_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0

syntax on
set hidden
set wrap!
set relativenumber
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set scrolloff=4
set signcolumn=no
set autochdir
" set noautochdir

set termguicolors
set t_Co=256
" colorscheme base16-black-metal-gorgoroth
" colorscheme base16-atelier-plateau
" colorscheme base16-classic-dark
" colorscheme alduin
" colorscheme desert
" colorscheme ashen
colorscheme base16-atelier-plateau
hi Normal ctermbg=NONE guibg=NONE
hi StatusLine   gui=NONE guifg=#d0d0d0 guibg=#1c1c1c
hi StatusLineNC gui=NONE guifg=#707070 guibg=#121212
hi Macro guifg=#777777
hi PreProc guifg=#777777
hi Include guifg=#777777
hi LineNr ctermbg=NONE ctermfg=gray guibg=NONE guifg=#808080
hi VertSplit cterm=NONE term=NONE ctermbg=NONE guibg=NONE guifg=#676767
hi EndOfBuffer ctermbg=NONE guibg=NONE 
hi Function guifg=#dddddd
hi LspErrorHighlight   gui=underline cterm=underline guifg=#ff6c6b guibg=NONE
hi LspWarningHighlight gui=underline cterm=underline guifg=#ECBE7B guibg=NONE
hi cppSTLvariable guifg=#ffffff

set background=dark
let mapleader = " "
autocmd FileType c,cpp,python,javascript setlocal path+=**
filetype plugin on
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 1
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 1
let g:instant_markdown_port = 8888
" let g:instant_markdown_theme = 'dark'
