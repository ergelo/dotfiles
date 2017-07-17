execute pathogen#infect()
syntax on
filetype plugin indent on

"set font
set guifont=Source\ Code\ Pro\ for\ Powerline:h13  

" Ctrl-P mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Tagbar Mapping
map <leader>rt :TagbarToggle<CR>

"Gundo Mapping
nnoremap <F5> :GundoToggle<CR>
nmap <silent> <leader>d <Plug>DashSearch

"NERDTree mappings
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Buffergator Settings
let g:buffergator_autoupdate = 1
let g:buffergator_autodismiss_on_select = 0

" Airline to use powerline symbols
let g:airline_powerline_fonts = 1
 
" django syntax
au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.template set filetype=htmldjango

"sets tabspace to 2 and applies to all indentation
set ts=4
set sw=4

" python pep-8 but no textwidth
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=0

set background=dark
colorscheme solarized

"set local tags directories
set tags=./tags;/

"all backups and swp files are stored together
set directory=~/.vim/swap//,.
set backupdir=~/.vim/backup//,./.backup

" Tab Completion
set wildignore+=*.pyc

"show matching brackets
set sm

"removes vi compatibility restrictions
set nocompatible

"indents lines based on previous lines
set autoindent

"shows files while tabbing through paths
set wildmenu

"removes toolbar
set guioptions-=T 

"sets incremental search
set incsearch

"sets highlighting of search patterns
set hlsearch 

"allows cursor to move on unedited space
"set virtualedit=all

"sets backspace to work
set backspace=indent,eol,start

"sets column and line number and percentage
set ruler
set number 
set relativenumber

"removes toolbar
set guioptions-=T

"set tab title
:set guitablabel=[%N]\ %M%t

"ctrl-l to remove highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Command-Option-ArrowKey to switch viewports
map <D-M-Up> <C-w>k
imap <D-M-Up> <Esc> <C-w>k
map <D-M-Down> <C-w>j
imap <D-M-Down> <Esc> <C-w>j
map <D-M-Right> <C-w>l
imap <D-M-Right> <Esc> <C-w>l
map <D-M-Left> <C-w>h
imap <D-M-Left> <C-w>h

if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>

  "NERDCommenter Mappings
  map <D-/> :NERDCommenterToggle<CR>
  imap <D-/> <Esc>:NERDCommenterToggle<CR>

endif

" Show Status Bar
set laststatus=2

" Show (partial) command in the status line
set showcmd
