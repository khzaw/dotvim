set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmairk/vundle'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-markdown'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'sjl/badwolf'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
if executable('ctags')
    Bundle 'majutsushi/tagbar'
endif
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Spaceghost/vim-matchit'
Bundle 'msanders/snipmate.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'guns/xterm-color-table.vim'
Bundle 'klen/python-mode'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'AndrewRadev/switch.vim'
Bundle 'jcf/vim-latex'
Bundle 'mattn/zencoding-vim'
Bundle 'juvenn/mustache.vim'
Bundle 'tomasr/molokai'
Bundle 'kchmck/vim-coffee-script'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'peterhoeg/vim-tmux'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'suan/vim-instant-markdown'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'jQuery'
Bundle 'zaiste/tmux.vim'
Bundle 'benmills/vimux'
Bundle 'slim-template/vim-slim'

" Colorschemes
Bundle 'tpope/vim-vividchalk'
Bundle 'pfdevilliers/Pretty-Vim-Python'
Bundle 'w0ng/vim-hybrid'
Bundle 'zaiste/Atom'
Bundle 'tomasr/molokai'
Bundle 'bufexplorer.zip'
Bundle 'blackboard.vim'
Bundle 'Sift'
Bundle 'jellybeans.vim'
Bundle 'xterm16.vim'
Bundle 'wombat256.vim'
Bundle 'sexy-railscasts'
Bundle 'Mustang2'
Bundle 'YankRing.vim'
Bundle 'twilight'
Bundle 'Zmrok'
Bundle '256-jungle'
Bundle 'molokai'
Bundle 'github-theme'
Bundle 'Guardian'

let g:vundle_default_git_proto = 'git'

filetype plugin indent on
syntax on

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Environment
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

set nocompatible 			" leave vi-compatibility mode
set encoding=utf-8 			" unicode encoding by default
set title                   " show title in terminal
set hidden                  " buffer hidden, not closed, when abandoned
set noexrc
set linebreak
set clipboard=unnamed
set showcmd
let mapleader = ","
let maplocalleader = ""

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" GUI Options
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

if has('gui_running')
    set background=dark
    colorscheme Tomorrow-Night
    "set colorcolumn=85
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
    if has('gui_macvim')
        "set guifont=Inconsolata-dz\ for\ Powerline:h14
        set guifont=Inconsolata:h16
        "set guifont=CPMono_v07:h16
        set transparency=6
        "set fullscreen
        set fuopt+=maxhorz
        set fuopt+=maxvert
        macmenu &Edit.Find.Find\.\.\. key=<nop>
        map <D-f> :set invfu<cr>
    elseif has('gui_gtk')
        set guifont=Monospace\ 11
    elseif has('gui_win32')
        echo ":("
    endif
    set guioptions-=L
    set linespace=1
    set guioptions-=M
    set guioptions-=r
    highlight SpellBad term=underline gui=undercurl guisp=Orange
else
    set t_Co=256
    color wombat256mod
endif

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Various Configurations
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

set nostartofline                   " don't jump to the start of line when scrolling
set visualbell                      " supress audio/visual error
set backspace=indent,eol,start      " make backspace more flexible
set relativenumber
set mouse=a                         " enable mouse support in console
set cursorcolumn

" Search and Highlight
" -------------------------------------------
set hlsearch                " Highlight search
set incsearch
set showmatch

" Code Folding
" -------------------------------------------
"set nofoldenable                " don't fold by default 
set foldlevelstart=0

" Space to toggle folds
nnoremap <Space> zA
vnoremap <Space> zA

" Make z0 recursively open whatever top level fold we're in, no matter where
" the cursor happens to be
nnoremap z0 zCz0

" Use ,z to "focus" the current fold
nnoremap <leader>z zMzvzz

" Case
" -------------------------------------------
set ignorecase
set smartcase

" Characters display
" -------------------------------------------
set list
set listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
set showbreak=↪
set updatetime=4000

" Location Indicators
" -------------------------------------------
set nocursorcolumn              " highlight current column, off
set cursorline                  " hightlight current line

" Status Indicators
" -------------------------------------------
set notimeout           " no command timeout
set laststatus=2        " always show the status line
set report=0            " report this or greater number of changed lines
set ruler               " always show current positions along the bottom

" Completion
" -------------------------------------------
set wildchar=<Tab>
set wildmode=longest:full:list
set wildignore+=*.o,*.pyc,.DS_Store
set completeopt=longest,menuone,preview

" Splitting Windows
" -------------------------------------------
set splitright
"set splitbelow

" Text Formatting and Layout
" -------------------------------------------
set wrap                " soft wrap long lines
set wm=4
set formatoptions=qrn1

" Indentation
" -------------------------------------------
"set tabstop=4
"set shiftwidth=4

" Tabs
" -------------------------------------------
autocmd FileType * set tabstop=4|set shiftwidth=4|set expandtab|set autoindent|set smartindent|set smarttab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set autoindent|set smartindent|set textwidth=80|set smarttab
autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab|set autoindent|set smartindent|set smarttab
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab|set autoindent|set smartindent| set smarttab
autocmd FileType php set tabstop=2|set shiftwidth=2|set expandtab|set autoindent|set smartindent| set smarttab
"set expandtab       " convert tabs into spaces
"set tabstop=4       
"set softtabstop=4   " tab conversion to number of spaces
"set shiftwidth=4    " auto-indent amount
set shiftround      " when at 3 spaces, when I hit > .. go to 4, not 5
set smarttab
set autoindent      " copy indent form current when starting a new line
set smartindent

" Backup & saving
" -------------------------------------------
set noswapfile
set nobackup
set nowritebackup

set autowriteall
set autoread

" Auto save when losing focus
au FocusLost * :wa
" Resize splits when the window is resized
au VimResized * exe "normal! \<C-w>=" 

" Relative Number
" -------------------------------------------
function! g:ToggleRelativeNumber()
    if &relativenumber
        setlocal number
    else
        setlocal relativenumber
    endif
endfunction
nnoremap <silent> <f1> :call g:ToggleRelativeNumber()<cr>

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Keybindings
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" sorting functions
vnoremap <leader>S :sort<cr>

" Toggle spell-checking
" -------------------------------------------
map <f7> :setlocal spell!<cr>

" Shortcut to edit .vimrc file
" -------------------------------------------
nnoremap <leader>rc <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>grc <C-w><C-v><C-l>:e $HOME/.gvimrc<cr>
nnoremap <leader>sc <C-w><C-v><C-l>:e $HOME/.vim/setcolors.vim<cr>

" Stop using the arrow keys
" -------------------------------------------
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" Change case
nnoremap <C-u> gUiw
inoremap <C-u> <esc> gUiwea


" kj - Get out of insert mode
" -------------------------------------------
imap kj     <esc>
imap jj     <esc>

" save one keystroke
nnoremap ; :

" Folding 

" QQ - quit tab
" -------------------------------------------
nnoremap QQ :QuitTab<cr>
command! QuitTab call s:QuitTab()
function! s:QuitTab()
    try
        tabclose
    catch /E784/    " can't close last tab
        qall
    endtry
endfunction
" Launching External Apps
" -------------------------------------------
abbrev ff :! open -a firefox.app %:p<cr>
abbrev chrome :! open -a google\ chrome.app %:p<cr>
abbrev sf :! open -a safari.app %:p<cr>

" Make Y consistent with D and C
" -------------------------------------------
map Y           y$

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Search
nmap <leader>s  :%s/
vmap <leader>s  :%s/
nnoremap / /\v
vnoremap / /\v
set gdefault        " Global searching as default

" Split screen
" -------------------------------------------
map <leader>v   :vsp<cr>

" Move between split screens and tabs
" -------------------------------------------
"nmap <C-j>      <C-w>j
"nmap <C-k>      <C-w>k
"nmap <C-h>      <C-w>h
"nmap <C-l>      <C-w>l
nmap gh <C-w>h
nmap gk <C-w>k
nmap gj <C-w>j
nmap gl <C-w>l
nmap <C-l> gt
nmap <C-h> gT

" Remove highlighting post-search
" -------------------------------------------
nmap <leader>y  :nohls<cr>

" Auto-indent whole file
" -------------------------------------------
nmap <leader>=  gg=G``

" Fast scrolling
" -------------------------------------------
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" Previous/next quickfix file listings (e.g. search results)
" -------------------------------------------
map <M-D-Down>  :cn<cr>
map <M-D-Up>    :cp<cr>

" Previous/next buffers
" -------------------------------------------
map <M-D-Left>  :bp<cr>
map <M-D-Right> :bn<cr>

" Easy access to the shell
" -------------------------------------------
map <Leader><Leader> :!

" Insert a blank link without leaving insert mode
" -------------------------------------------
:nnoremap <silent> <leader>k :pu! _<cr>:']+1<cr>   " on top
:nnoremap <silent> <leader>j :pu _<cr>:'[-1<cr>    " at the bottom

" MarkDown
" -------------------------------------------
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Plugins
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" Vim-instant-markdown
" -------------------------------------------
"let g:instant_markdown_slow = 1

"Powerline
" -------------------------------------------
let g:Powerline_symbols = 'fancy'

"Gundo
" -------------------------------------------
nnoremap <F5> :GundoToggle<cr>

"NERDCommenter
" -------------------------------------------
map <leader>/ <plug>NERDCommenterToggle

"Syntastic
" -------------------------------------------
nnoremap <leader>e :Errors<cr>
let g:syntastic_check_on_open = 0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"Solarized
" -------------------------------------------
let g:solarized_menu = 1
if has('gui_running')
    call togglebg#map("<F6>")
endif

"NERDTree
" -------------------------------------------
nmap ,nt :NERDTreeToggle
nmap <F2> :NERDTreeToggle<cr>
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeWinSize=30
let g:NERDTreeIgnore=['\~$', '.*\pyc$', '.class[[file]]', 'pip-log\.txt$', '.DS_Store']
let g:NERDTreeShowHidden=1
let g:NERDTreeDirArrows=1
let g:NERDTreeMinimalUI=1
map \|  :NERDTreeFind<cr>
autocmd bufenter * cd %:p:h " change the current dir to that of the file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " close vim when only nerdtree window is left


"ctrlp
" -------------------------------------------
map <leader>p :CtrlP<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.git|\.hg|\.svn)$',
    \ 'file': '\.exe$\|\.so$\|\.javac$'
    \ }

"rainbow_parentheses
" -------------------------------------------
nnoremap <leader>R :RainbowParenthesesToggle<cr>

"tagbar
" -------------------------------------------
nnoremap <silent> <leader>l :TagbarToggle<cr>
let g:tagbar_foldlevel = 2
let g:tagbar_width = 30


"SuperTab
"-------------------------------------------
let g:SuperTabDefaultCompletionType = "context"

"python-mode
"-------------------------------------------
map <leader>g :call RopeGotoDefinition()<cr>
let g:ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_breakpoint = 1
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_builtin_funcs = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_lint_write = 0
let g:pymode_run_key = 'R'
let g:pymode_lint = 1                       " load pylint code plugin
let g:pymode_indent = 1
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_always_show_complete_menu = 1
let g:pymode_syntax_print_as_function = 1



"Zen-Coding
"-------------------------------------------
"let g:user_zen_expandabbr_key = '<C-e>'      Change zen-coding plugin expansion key
"let g:user_zen_leader_key = '<C-y>'          Change zen-coding leader key for all

"Conque-Shell
"-------------------------------------------
nnoremap <leader>cts :ConqueTermSplit zsh<cr>  
nnoremap <leader>vcts :ConqueTermVSplit zsh<cr>

" Ctags
" -------------------------------------------
nnoremap <leader><cr> :silent !/usr/local/bin/ctags -R . && sed -i .bak -E -e '/^[^	]+	[^	]+.py	.+v$/d' tags<cr>

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Whitespace & highlithg ( language-specific config )
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" C family
" -------------------------------------------
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp :%s/\s\+$//e

" Ruby, Rails
" -------------------------------------------
"autocmd BufWritePre *.rb,*.yml,*.js,*.json,*.css,*.less,*.sass,*.html,*.xml,*.erb,*.haml,*.feature :%s/\s\+$//e
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.god set filetype=ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile soloistrc set filetype=ruby

" Java, PHP
" -------------------------------------------
autocmd BufWritePre *.java,*.php :%s/\s\+$//e

" Highlight JSON files as javascript
" -------------------------------------------
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Highlight Jasmine fixture files as HTML
" -------------------------------------------
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Consider question/exclamation marks to be part of a Vim word.
" -------------------------------------------
"autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
"autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Auto saving VIMRC
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
source ~/.vim/setcolors.vim
augroup vimrcs
    au!
    au bufwritepost ~/.vimrc
                \ source ~/.vimrc |
                \ source ~/.gvimrc |
                \ source ~/.vim/setcolors.vim |
                \ if exists('g:Powerline_loaded') |
                \ silent! call Pl#Load()
                \ endif
augroup END

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Helpers
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" Django-specific
" -------------------------------------------
let g:last_relative_dir = ''
nnoremap <leader>1 :call RelatedFile ("models.py")<cr>
nnoremap <leader>2 :call RelatedFile ("views.py")<cr>
nnoremap <leader>3 :call RelatedFile ("urls.py")<cr>
nnoremap <leader>4 :call RelatedFile ("admin.py")<cr>
nnoremap <leader>5 :call RelatedFile ("tests.py")<cr>
nnoremap <leader>6 :call RelatedFile ( "templates/" )<cr>
nnoremap <leader>7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap <leader>0 :e settings.py<cr>
nnoremap <leader>9 :e urls.py<cr>


fun! RelatedFile(file)
    " This is to check that the directory looks djangoish
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        exec "edit %:h/" . a:file
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
    if g:last_relative_dir != ''
        exec "edit " . g:last_relative_dir . a:file
        return ''
    endif
    echo "Cant determine where relative file is : " . a:file
    return ''
endfun


" Swapping Split Screens
" -------------------------------------------

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

nmap <silent> <leader>mw :call MarkWindowSwap()<cr>
nmap <silent> <leader>pw :call DoWindowSwap()<cr>


" Make sure Vim returns to the same line when you reopen a file
" -------------------------------------------------------------
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   execute 'normal! g`"zvzz"' |
                \ endif
augroup END    

" Highlighting     
" ------------------------------------------------------------------

" Syntax 
" Show syntax highlighting groups for word under cursor
" ------------------------------------------------------------------

function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nmap <C-g> :call <SID>SynStack()<cr>

" Toggle Indicators
" -------------------------------------------------------------
" We'll use &number and &relativenumber (mutually eclusive) as proxies for 
" the toggle state of all our preferred indicator UI
function! ToggleIndicators()
    if (&number || &relativenumber) " turn off indicators
        let b:IndicatorNumber = 0
        let b:IndicatorRelativeNumber = 0
        let b:IndicatorCursorColumn = 0
        let b:IndicatorCursorLine = 0
        let b:IndicatorColorColumn = 0
        let b:IndicatorLastStatus = 0
        if &number
            let b:IndicatorNumber = 1
            set nonumber
        else " must be relativenumber
            let b:IndicatorRelativeNumber = 1
            set norelativenumber
        endif
        if &cursorcolumn==1
            let b:IndicatorCursorColumn = 1
            set nocursorcolumn
        endif
        if &cursorline
            let b:IndicatorCursorLine = 1
            set nocursorline
        endif
        if &colorcolumn > 0
            let b:IndicatorColorColumn = &colorcolumn
            set colorcolumn=0
        endif
        if &laststatus > 0
            let b:IndicatorLastStatus = &laststatus
            set laststatus=0
        endif
    else                            " turn on indicators
        if b:IndicatorNumber
            set number
        else " must be relativenumber
            set relativenumber
        endif
        if b:IndicatorCursorColumn
            set cursorcolumn
        endif
        if b:IndicatorCursorLine
            set cursorline
        endif
        if b:IndicatorColorColumn > 0
            exe "set colorcolumn=" . b:IndicatorColorColumn
        endif
        if b:IndicatorLastStatus > 0
            exe "set laststatus=" . b:IndicatorLastStatus
        endif
    endif
endfunction

nnoremap <F3> :call ToggleIndicators()<cr>
inoremap <F3> <esc>:call ToggleIndicators()<cr>
vnoremap <F3> <esc>:call ToggleIndicators()<cr>

" Toggle CursorColumn 
" -------------------------------------------------------------
nnoremap <F4> :set invcursorcolumn<cr>
inoremap <F4> <esc>:set invcursorcolumn<cr>a
vnoremap <F4> <esc>:set invcursorcolumn<cr>
