" Source: https://github.com/khzaw/dotvim

set nocompatible
filetype off
" Plugins installed {{{
    call plug#begin('~/.vim/plugged')
  " Coding {{{
      Plug '/usr/local/opt/fzf'
      Plug 'mileszs/ack.vim'
      let g:ackprg = 'ag --nogroup --nocolor --column'
      Plug 'Raimondi/delimitMate'        "matching quotes, brackets ., etc
      Plug 'scrooloose/nerdcommenter'    "commenting
      Plug 'tpope/vim-vinegar'
      Plug 'tpope/vim-surround'          "quoting/parenthizing made simple
      Plug 'editorconfig/editorconfig-vim'
      let g:EditorConfig_exclude_patterns=['fugitive://.*', 'scp://.*']
  " }}}
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'leafgarland/typescript-vim'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'html']}
    Plug 'hdima/python-syntax'
    Plug 'python/black'
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
  " git {{{
      Plug 'tpope/vim-fugitive'
  " }}}
  " colorschemes {{{
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'soft-aesthetic/soft-era-vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'hzchirs/vim-material'
    Plug 'andreypopp/vim-colors-plain'
    Plug 'balanceiskey/vim-framer-syntax'
  " }}}
  " Fancy {{{
      Plug 'vim-airline/vim-airline'
      Plug 'vim-airline/vim-airline-themes'
      Plug 'junegunn/goyo.vim'
  " }}}
  " Markdown {{{
    Plug 'tpope/vim-markdown'
  " }}}
    call plug#end()
  " }}}
filetype plugin indent on
" Leader {{{
  let mapleader = ","
  let maplocalleader = "\\"
" }}}
" Configs {{{
  if executable('lua')
    if has('gui_running')
      set regexpengine=1
    endif
  endif
  syntax enable
  set nocompatible        " leave vi-compatibility mode
  set encoding=utf-8      " unicode encoding by default
  set title               " show title in terminal
  set noexrc              " enables reading of .vimrc in the current directory
  set gdefault            " global searching as default
  set linebreak
  set showcmd
  set nostartofline
  set history=1000
  set visualbell          " supress audio/visual error
  set backspace=indent,eol,start
  set number
  set mousehide           " hide the mouse pointer while typing
  set hlsearch
  set autowrite
  set autoread
  set shiftround
  set incsearch
  set showmatch
  set notimeout
  set ttimeout
  set ttimeoutlen=10
  set laststatus=2
  set report=0
  set ruler               " always show current positions along the bottom
  set showbreak=↪
  set updatetime=4000
  set complete=.,w,b,u,t
  set completeopt=longest,menuone,preview
" }}}
" Folding {{{
  set foldmethod=syntax
  let javaScript_fold=1
  set foldcolumn=1
  set foldlevelstart=99
  nnoremap <Space> za
  vnoremap <Space> za
  " Make z0 recursively open whatever top level fold we're in
  nnoremap z0 zCz0
  " Use ,z to "focus" the current fold
  nnoremap <leader>z zMzvzz
" }}}
" Case {{{
  set ignorecase
  set smartcase
" }}}
" Splits {{{
  set splitright
" }}}
" Tabs, spaces, wrapping {{{
  set expandtab
  set wrap
  set wm=2
  set ts=2
  set sts=2
  set sw=2
  set nosmartindent
  set autoindent
  set ci
  set formatoptions=qrn1
  set textwidth=80
  set smarttab
" }}}
" Backups {{{
  set noswapfile
  set nobackup
  set nowritebackup
  set autowriteall
" }}}
" Triggers {{{
  au VimResized * :wincmd = " resize splits when the window is resized
" }}}
" FZF {{{
  nnoremap <leader>f :FZF<cr>
" }}}
" Wildmenu {{{
  set wildchar=<Tab>
  set wildmode=longest:full:list
  set wildignore+=*.o,*.pyc,.DS_Store
  set wildignore+=*.orig
  set wildignore+=*.javac,*.aux,*.out,*.toc
  set wildignore+=*.sw?,*.exe,*.dll,*.manifest
  set wildignore+=migrations
  set wildignore+=*.jpg,*.bmp,*.jpeg,*.gif,*.png
  set wildignore+=node_modules
" }}}
" Navigation {{{
  " Buffers {{{
    nnoremap <C-l> gt
    nnoremap <C-h> gT
  " }}}
  " Splits {{{
    nmap gh <C-w>h
    nmap gk <C-w>k
    nmap gj <C-w>j
    nmap gl <C-w>l
    nnoremap <Tab> <C-w>w
    nnoremap <Tab> <C-w>W
  " }}}
" }}}
" Plug settings {{{
    let g:python_highlight_all = 1
    let g:vim_jsx_pretty_colorful_config = 1
  " DelimitMate {{{
    let delimitMate_excluded_regions = "Comment"
    au FileType ocaml let b:delimitMate_quotes = "\""
  " }}}
  " NERDCommenter {{{
    map <leader>/ <plug>NERDCommenterToggle
    let g:NERDSpaceDelims=1
  " }}}
  " Fugitive {{{
    nnoremap <leader>gs :Gstatus<cr>
  " }}}
  " vim-javascript {{{
    let javascript_enable_domhtmlcss = 1
    let g:javascript_plugin_flow = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_conceal_function = "ƒ"
    let g:javascript_conceal_arrow_function  = "⇒"
  " }}}
  " prettier {{{
    let g:prettier#autoformat=1
    let g:prettier#exec_cmd_async=1
    autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync
    nnoremap = :Prettier<cr>
    autocmd BufWritePre *.py Black
  " }}}
" }}}
" Environment (GUI/Console) {{{
syntax enable
set background=dark
set colorcolumn=""
if has('gui_running')
    if has('gui_macvim')
      let g:PaperColor_Theme_Options = {
            \ 'language': {
            \     'python': {
            \        'highlight_builtins': 1
            \      },
            \      'cpp': {
            \        'highlight_standard_library': 1
            \      },
            \      'c': {
            \        'highlight_builtins': 1
            \      }
            \   }
            \ }
      colorscheme PaperColor
      set guifont=Iosevka\ Term:h18
      set nofu
      set termguicolors
      set bg=dark
      set lsp=3
      set transp=1
      set nonumber
      set fuopt+=maxhorz
      set fuopt+=maxvert
      set macmeta
    elseif has('gui_gtk')
      set guifont=Monospace\ 16
    elseif has('gui_win32')
      echo ":("
    endif
    set guioptions-=T
    set guioptions-=L
    set guioptions-=M
    set guioptions-=r
    highlight SpellBad term=underline gui=undercurl guisp=Orange
else
    set t_Co=256
    colorscheme default
endif
" }}}
" Utlitiy Functions {{{
    " Relative Number {{{
    function! g:ToggleRelativeNumber()
        if &relativenumber
            setlocal relativenumber
        else
            setlocal number
        endif
    endfunction
    nnoremap <silent> <f1> :call g:ToggleRelativeNumber()<cr>
    " }}}
  " Swapping Split Screens {{{
  function! MarkWindowSwap()
      let g:markedWinNum = winnr()
  endfunction

  function! DoWindowSwap()
      "Mark destination
      let curNum = winnr()
      let curBuf = bufnr( "%" )
      exe g:markedWinNum . "wincmd w"
      "Switch to source and shuffle dest->source
      let markedBuf = bufnr( "%" )
      "Hide and open so that we aren't prompted and keep history
      exe 'hide buf' curBuf
      "Switch to dest and shuffle source->dest
      exe curNum . "wincmd w"
      "Hide and open so that we aren't prompted and keep history
      exe 'hide buf' markedBuf
  endfunction

  nnoremap <silent> <leader>mw :call MarkWindowSwap()<cr>
  nnoremap <silent> <leader>pw :call DoWindowSwap()<cr>
  " }}}
  " Auto saving VIMRC {{{
  augroup vimrcs
    autocmd!
    autocmd BufWritePost ~/Code/dotvim/vimrc source %
  augroup END
  " }}}
  " Make sure Vim returns to the same line when you reopen a file {{{
  augroup line_return
      au!
      au BufReadPost *
                  \ if line("'\"") > 0 && line("'\"") <= line("$") |
                  \   execute 'normal! g`"zvzz"' |
                  \ endif
  augroup END
  " }}}
" Convenience Mappings {{{
  " Toggle CursorColumn  {{{
    nnoremap <F4> :set invcursorcolumn<cr>
  " }}}
  " Escape {{{
    imap kj <esc>
    imap jj <esc>
  " }}}
  " Previous/next buffers {{{
    map <M-D-Left>  :bp<cr>
    map <M-D-Right> :bn<cr>
  " }}}
  " Fast scrolling {{{
    nnoremap <C-e>  3<C-e>
    nnoremap <C-y>  3<C-y>
    nnoremap J 5j
    nnoremap K 5k
    xnoremap J 5j
    xnoremap K 5k
  " }}}
  " easier moving of code blocks {{{
    vnoremap < <gv
    vnoremap > >gv
  " }}}
  " Stop using the arrow keys {{{
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> :bprev<cr>
    nnoremap <right> :bnext<cr>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
  " }}}
  " Quick editing {{{
    nnoremap <leader>rc :vsp ~/code/dotvim/vimrc<cr>
    nnoremap <leader>zsh :tabnew ~/.zshrc<cr>
  " }}}
  " Search {{{
    nmap <leader>s  :%s/
    vmap <leader>s  :%s/
    nnoremap / /\v
    vnoremap / /\v
    nnoremap <leader>y  :nohls<cr>
  " }}}
" }}}

  " Make Y consistent with D and C
  map Y y$

  " toggle spell-checking
  map <f7> :setlocal spell!<cr>

  nnoremap j gj
  nnoremap k gk
  xnoremap j gj
  xnoremap k gk
" }}}
