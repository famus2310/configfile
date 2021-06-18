"Plugin
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
call plug#end()

"File System
syntax on
filetype plugin on
set nohls
set noerrorbells
set rnu
set smartindent
set number
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd
set t_Co=256
set cursorline
set encoding=UTF-8
let mapleader="\<Space>"
autocmd filetype python setlocal expandtab shiftwidth=2 softtabstop=2 smartindent tabstop=2 
noremap <Leader>y "+y
autocmd FileType cpp nnoremap <leader>w :w <bar> !g++ -std=c++17 %<CR>
autocmd FileType cpp nnoremap <leader>r :!./a.out<CR>
set pastetoggle=<F2>
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
set termguicolors

"set working dir to open buffer except nerdtree
autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif

"Necessary Command
"4 spaces to 2 spaces 
nnoremap <leader>s :set ts=4 sts=4 noet <bar> :retab! <bar> :set ts=2 sts=2 et <bar> :retab<CR>

"NERDTree
nmap <F3> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1

set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
set cursorline
autocmd FileType cpp nmap <F5> i/*<CR><Tab>Filename: <C-R>=expand('%:p:h:t')<CR>/<C-R>=expand('%:t')<CR><CR>Timestamp: <C-R>=strftime("%d-%m-%Y %H:%M:%S")<CR><CR>Author: Fadhil Musaad<CR><BS><BS>*/<ESC>:r ~/CP/template/template.cpp<CR>
autocmd FileType go nmap <F5> i/*<CR>* Filename: <C-R>=expand('%:p:h:t')<CR>/<C-R>=expand('%:t')<CR><CR>* Timestamp: <C-R>=strftime("%d-%m-%Y %H:%M:%S")<CR><CR>* Author: Fadhil Musaad<CR>*/<CR><ESC>:r ~/CP/template/template.go<CR>
autocmd FileType go nmap <F6> i/*<CR>* Filename: <C-R>=expand('%:p:h:t')<CR>/<C-R>=expand('%:t')<CR><CR>* Timestamp: <C-R>=strftime("%d-%m-%Y %H:%M:%S")<CR><CR>* Author: Fadhil Musaad<CR>*/<CR><ESC>:r ~/CP/template/template_test.go<CR>

" Use deoplete and ALE
let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nmap <silent> <C-e> <Plug>(ale_next_wrap)
let g:ale_enabled = 1
let g:ale_open_list = 1
let g:ale_list_window_size = 5
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠'
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

" function! LinterStatus() abort
"   let l:counts = ale#statusline#Count(bufnr(''))

"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors

"   return l:counts.total == 0 ? '? all good ?' : printf(
"         \   '?? %dW %dE',
"         \   all_non_errors,
"         \   all_errors
"         \)
" endfunction

" set statusline=
" set statusline+=%m
" set statusline+=\ %f
" set statusline+=%=
" set statusline+=\ %{LinterStatus()}

"Vim-Airline
let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
"Use Airline + ALE
let g:airline#extensions#ale#enabled = 1

