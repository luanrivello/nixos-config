syntax on

"config
set nu
set relativenumber
set nowrap
"set wrap linebreak"
set showmatch
set mouse=a
set confirm
set title
set hidden
""indentation
set tabstop=4 softtabstop=4 noexpandtab
set shiftwidth=4
set expandtab
set autoindent
set expandtab
set smartindent
set smarttab
""search
set hlsearch
set smartcase
set incsearch
""undo & backup
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set undolevels=1000

"autosave
"autocmd TextChanged,TextChangedI * silent write

"map
map <F2> :echo strftime('%c')<CR>
nnoremap Q q
map q :quit<CR>
map <C-s> :write<CR>
map <C-p> :PlugClean \| :PlugUpdate \| :PlugUpgrade <CR>
nnoremap <CR> :noh<CR><CR>

""buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

"" Tracing spaces
map gs :%s/\s\+$//<cr>

""center
nnoremap j jzz
nnoremap k kzz
nnoremap gg ggzz
nnoremap G Gzz
nnoremap n nzzzv
nnoremap N Nzzzv

""undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ( (<c-g>u
inoremap [ [<c-g>u
inoremap <Space> <Space><c-g>u

""move line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==

""Plugins
"call plug#begin('~/.config/nvim/plugged')
"
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"
""Plug 'mcchrish/nnn.vim'
"Plug 'voldikss/vim-floaterm'
"
""Plug 'preservim/nerdtree'
""Plug 'ryanoasis/vim-devicons'
""Plug 'Xuyuanp/nerdtree-git-plugin'
""Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"
"Plug 'tpope/vim-surround'
"Plug 'jiangmiao/auto-pairs'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"
""Plug 'ycm-core/YouCompleteMe'"
""Plug 'zxqfl/tabnine-vim'"
"
"call plug#end()

"Hex Color Visualizer
""let g:Hexokinase_highlighters = ['foregroundfull']
let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
set termguicolors

"Airline Customization
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '▐'
let g:airline#extensions#tabline#alt_sep = 0
let g:airline_left_alt_sep = '|'
let g:airline_right_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ':'
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_left_sep = ''
let g:airline_right_sep = '▐'
let g:airline_section_z = '%3p%% (%2l:%2v)'

"FloatTerm
let g:floaterm_opener = 'edit'
"let g:floaterm_borderchars = ''
"hi Floaterm guibg=black
"hi FloatermBorder guibg=orange guifg=cyan
hi FloatermBorder guifg=cyan
"hi FloatermNC guibg=gray
let g:floaterm_keymap_prev   = '<F5>'
let g:floaterm_keymap_toggle = '<F6>'
let g:floaterm_keymap_next   = '<F7>'

map <C-t> :FloatermNew! --height=0.8 --width=0.7 --name=terminal --title=terminal --autoclose=2<cr>
map <C-n> :FloatermNew --height=0.9 --width=0.4 --name=nav --title=nav nnn<cr>

"NERDTree
"autocmd VimEnter * NERDTree | wincmd p
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"YouCompleteMe
"let g:ycm_global_ycm_extra_conf = '~/.conf/nvim/.ycm_extra_conf.py'"
"set completeopt-=preview"
"let g:ycm_show_diagnostics_ui = 0"

