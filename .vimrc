"VIM PLUG
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
Plug 'dense-analysis/ale'
Plug 'vimwiki/vimwiki'
call plug#end()

"Vim wiki - Set it to use markdown
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


"AutoExpanding
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O

"Clipboard for copying vim to clipboard
set clipboard=unnamed

"Clipboard copying
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR>

"LINTING for ale to show the numer of errors and warnings
"function! LinterStatus() abort
"    let l:counts = ale#statusline#Count(bufnr(''))    
"    
"    let l:all_errors = l:counts.error + l:counts.style_error
"    let l:all_non_errors = l:counts.total - l:all_errors    
"    return l:counts.total == 0 ? 'OK' : printf(
"        \   '%d⨉ %d⚠ ',
"        \   all_non_errors,
"        \   all_errors
"        \)
"endfunction
" Ending linting

"set statusline+=%f=
"set statusline+=\ %{LinterStatus()}


" Vim Explore settings
"Tree list
let g:netrw_liststyle =4

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 45

" Have this set if you want vim to always open up with explore when opening
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

set wildmenu
set wildmode =list:full

" Sybtax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler


" Blink cursor on error instead of beeping 
"set visualbell

set mouse =a

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set smartindent
" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

"set background=dark
"colorscheme solarized8
"Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

