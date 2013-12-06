syntax on
colorscheme saml
set showmatch
set ignorecase
set showmode
set ts=4
set sw=4
set autoindent
set smartindent

" Enable file type plugins
filetype plugin on
let g:pydiction_location='~/.vim/pydiction-1.2/complete-dict'

" Show line numbers
set number
set expandtab

autocmd FileType python runtime! autoload/pythoncomplete.vim

" Show code completion with the normal Ctrl+Space
imap <c-space> <c-x><c-o>
:set backspace=2

" from /home/samuel/go/misc/vim/readme.txt
" Some Linux distributions set filetype in /etc/vimrc. 
" Clear filetype flags before changing runtimepath to force Vim to reload them. 
filetype off 
filetype plugin indent off 
set runtimepath+=$GOROOT/misc/vim 
filetype plugin indent on 
filetype plugin on

if has("autocmd")
            autocmd FileType python set complete+=k/home/samuel/.vim/pydiction-1.2/pydiction isk+=.,(
                    endif " has("autocmd")

                    filetype plugin on
                    filetype indent on

" Mappings
                    nmap <C-N> :noh <CR>

" Highlight search
set hlsearch

" More convenient command for exiting insert mode
imap jj <Esc>

" Remap Ctrl + Z to save, in all modes
noremap <silent> <C-Z>      :update<CR>
vnoremap <silent> <C-Z>     :<C-C>:update<CR>
inoremap <silent> <C-Z>     <C-[>:update<CR>  

" Navigate 4x faster when holding down Ctrl
nmap <c-j> 4j
nmap <c-k> 4k
nmap <c-h> 4h
nmap <c-l> 4l
