set encoding=utf-8

syntax enable

set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set nu
set cursorline
set nowrap

set noshowmode

set t_Co=256

set laststatus=2


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf.vim'

" syntax plugins
Plugin 'PotatoesMaster/i3-vim-syntax'
" the one syntax plugin to rule them all!
Plugin 'sheerun/vim-polyglot'
" Polyglot's javascript syntax sucks
" Plugin 'jelera/vim-javascript-syntax'

" COlor schemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
Plugin 'roosta/srcery'

call vundle#end()
filetype plugin indent on

set background=dark
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="light"
let g:gruvbox_invert_signs=0
let g:gruvbox_sign_column="bg0"
let g:gruvbox_vert_split="bg0"
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_invert_selection=0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 0

set noshowmode

let g:vim_markdown_frontmatter = 1

let g:tex_conceal = ""

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set incsearch
set hlsearch
set smartcase

" spelling settings USA USA USA!!!
set spelllang=en_us

" set 5 lines padding above and below the cursor even when scrolling
set scrolloff=5
" set the vertical split character to the same one as tmux
set fillchars+=vert:│

" set persistent undo
set undofile
set undodir=~/.vim/undo
set undoreload=10000
set undolevels=1000

" for the vim-markdown plugin
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1

let g:syntastic_disabled_filetypes=['html', 'sass']

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["css","sass","json","html"] }


" general ease of use bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = "\<Space>"

nnoremap <leader>/ :noh<CR>
nnoremap <leader>; $a;<C-C>

set rtp+=~/.fzf
" let g:fzf_buffers_jump = 1

" binds for fzf
nnoremap <Tab>f :Files<CR>
nnoremap <Tab>vf :vs<CR><C-W><C-L>:Files<CR>
nnoremap <Tab>b :Buffers<CR>
nnoremap <Tab>l :Lines<CR>

autocmd FileType html,css,sass,scss,jade,pug EmmetInstall

" let g:polyglot_disabled = ['javascript']

" binds for folding easier
set foldmethod=indent
set foldminlines=2
set foldnestmax=3
set foldopen+=jump
nnoremap <Tab><leader> za

colorscheme gruvbox
hi Folded ctermbg=235
hi VertSplit ctermfg=237

nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:indentLine_char = '│'
let g:indentLine_color_term=239 " gruvbox bg2
let g:indentLine_showFirstIndentLevel=0
let g:indentLine_conceallevel=1

set conceallevel=1

" add some missing syntax higlighting for javascript
" put this in the right file
syntax keyword javaScriptHtmlElemAttrs className clientHeight clientLeft clientTop clientWidth dir id innerHTML lang length offsetHeight offsetLeft offsetParent offsetTop offsetWidth scrollHeight scrollLeft scrollTop scrollWidth style tabIndex title htmlFor name textContent type

" syntax keyword javaScriptHtmlElemAttrs htmlFor id name
syntax keyword jsDomElemFuncs insertBefore replaceChild removeChild appendChild hasChildNodes cloneNode normalize isSupported hasAttributes getAttribute setAttribute removeAttribute getAttributeNode setAttributeNode removeAttributeNode getElementById getElementsByClassName getElementsByTagName querySelector querySelectorAll getAttributeNS setAttributeNS removeAttributeNS getAttributeNodeNS setAttributeNodeNS getElementsByTagNameNS hasAttribute hasAttributeNS createElement

syntax keyword jsDomElemAttrs nodeName nodeValue nodeType parentNode childNodes firstChild lastChild previousSibling nextSibling attributes ownerDocument namespaceURI prefix localName tagName

syntax keyword jsHtmlElemFuncs blur click focus scrollIntoView addEventListener dispatchEvent removeEventListener item


hi link javaScriptHtmlElemAttrs GruvboxRed
hi link jsDomElemFuncs GruvboxAqua
hi link jsHtmlElemFuncs jsDomElemFuncs
hi link jsDomElemAttrs GruvboxGreen

