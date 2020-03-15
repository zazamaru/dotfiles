set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set columns=200
set lines=150
set laststatus=2
set statusline=%y

set number
set nowrap
set autoindent
set hidden

set tabstop =4
set shiftwidth =
set softtabstop=4
set smartindent
set list listchars=tab:>-,trail:_,nbsp:%

"swapfile
set directory=$HOME/.vimswap
au BufWritePre * let &bex = '.' .strftime("%Y%m%d %H%M%S")
"backupfile
set backup
set writebackup
set backupdir=$HOME/.vimbackup
au BufWritePre * let &bex = '.' .strftime("%Y%m%d %H%M%S")
"undofile 
set undodir=$HOME/. vimundo
au BufWritePre * let &bex = '.' .strftime("%Y%m%d %H%M%S")

"Search Highlight on/off
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"Insert Row
nnoremap O o<Esc>

nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sr <C-w>r
nnoremap ss <C-w>s
nnoremap st <C-u>tabnew<CR>
nnoremap sv <C-w>v
nnoremap sq <C-w>q
vnoremap <Space>h 0
vnoremap <Space>j Lzz
vnoremap <Space>k Hzz
vnoremap <Space>l $

set nocompatible
filetype off
call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/vcscommand.vim'
Plug 'simeji/winresizer'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimproc.vim'
Plug 'thinca/vim-quickrun'
Plug 'tyru/caw.vim'
Plug 'tyru/open-browser.vim'
Plug 'ujihisa/unite-colorscheme'
Plug 'vim-jp/vimdoc-ja'
Plug 'Yggdroot/indentLine'
call plug#end()
filetype plugin indent on

IndentGuidesToggle

"exclude original color
set termguicolors
colorscheme default

augroup indentcolor
 "Change Indent Color
 let g:indent_guides_auto_colors = 0
 " When Vim Start up, vim-indent-guides set on automatically
 let g:indent_guides_enable_on_vim_startup=1
 " Invalid Auto Color
 let g:indent_guides_auto_colors=0
 autocmd!
 " Change Odd number Indent Color
 autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
 " Change Even number Indent Color
 autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
augroup END

" plugin mapping

nmap gca <Plug>(caw:dollarpos:toggle)

nmap gcc <Plug>(caw:wrap:toggle)

nmap gci <Plug>(caw:hatpos:toggle)

nmap gw  <Plug>(openbrowser-open)

nmap gww <Plug>(openbrowser-search)

vmap gca <Plug>(caw:dollarpos:toggle)

vmap gcc <Plug>(caw:wrap:toggle)

vmap gci <Plug>(caw:hatpos:toggle)

vmap gw  <Plug>(openbrowser-open)

vmap gww <Plug>(openbrowser-search)


nnoremap <silent>mc :<C-u>Unite colorscheme -auto-preview<CR>

noremap <silent>me :<C-u>Unite menu<CR> 

nnoremap <silent>mf :<C-u>VimFilerBufferDir -create<CR>

nnoremap <silent>ml :<C-u>Unite line -no-wrap<CR>

nnoremap <silent>mq :<C-u>lcd %:h<CR> :<C-u>QuickRun<CR>

nnoremap <silent>mrd :<C-u>NeoMRUReload<CR>:Unite directory_mru<CR>

nnoremap <silent>mrl :<C-u>Unite help -no-wrap -no-empty -horizontal<CR>

nnoremap <silent>mru :<C-u>Unite file_mru<CR>

nnoremap <silent>ms :<C-u>VimShellBufferDir<CR>

vnoremap <silent>gco :ContinuousNumber<CR>

nnoremap <Space>i :<C-u>IndentLinesToggle<CR>

nnoremap sp :<C-u>PrintSurround<CR>

vnoremap sp :PrintSurround<CR>
