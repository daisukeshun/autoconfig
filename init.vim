syntax on
set cursorline
"let g:airline_theme='onehalfdark'

set number
set relativenumber
set tabstop=4
set shiftwidth=4	 
set softtabstop=4

set hlsearch
set incsearch

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"map <C-n> :e . <CR>
nnoremap <C-n> :NERDTree<CR>

let g:netrw_liststyle=0
let g:netrw_winsize=30
let g:netrw_keepdir=1

autocmd BufEnter * silent! lcd %:p:h

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

map <silent> <C-р> :call WinMove('h')<CR>
map <silent> <C-о> :call WinMove('j')<CR>
map <silent> <C-л> :call WinMove('k')<CR>
map <silent> <C-д> :call WinMove('l')<CR>

function! WinMove(key) 
let t:curwin = winnr()
	exec "wincmd ".a:key
	if(t:curwin == winnr())
	if (match(a:key, '[jk]'))
		wincmd v
	else 
		wincmd s
	endif
		exec "wincmd ".a:key
	endif
endfunction

call plug#begin()

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:airline_theme='purify'
colorscheme purify
"colorscheme onehalfdark
