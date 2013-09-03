" vimrc
" Author: Kaung Htet Zaw <emoosx@gmail.com>
" Source: http://github.com/emoosx/dotvim

set nocompatible
filetype off
" Bundles installed {{{
  " NeoBundle {{{
    if has('vim_starting')
        set rtp+=~/.vim/bundle/neobundle.vim
    endif
    call neobundle#rc(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    let g:vundle_default_git_proto = 'git'
  " }}}
  " Coding {{{
      "NeoBundle 'ervandew/supertab'
      NeoBundle 'sjl/gundo.vim'
      NeoBundle 'msanders/snipmate.vim'
      NeoBundle 'Raimondi/delimitMate'
      NeoBundle 'scrooloose/nerdcommenter'
      NeoBundle 'scrooloose/syntastic'
      NeoBundle 'scrooloose/nerdtree'
      if executable('ctags')
        NeoBundle 'majutsushi/tagbar'
      endif
      NeoBundle 'mkitt/browser-refresh.vim'
      NeoBundle 'tpope/vim-surround'
      "NeoBundle 'Valloric/YouCompleteMe'
      NeoBundle 'Switch'
      NeoBundle 'kshenoy/vim-origami'
  " }}}
  " python {{{
      NeoBundle 'kien/ctrlp.vim'
      NeoBundle 'pfdevilliers/Pretty-Vim-Python'
      NeoBundle 'jmcantrell/vim-virtualenv'
      NeoBundle 'klen/python-mode'
  " }}}
  " LaTeX {{{
      NeoBundle 'jcf/vim-latex'
  " }}}
  " OCaml {{{
      NeoBundle 'def-lkb/vimbufsync'
  " }}}
  " html {{{
      NeoBundle 'docunext/closetag.vim'
      NeoBundle 'tmhedberg/matchit'
      NeoBundle 'othree/html5.vim'
  " }}}
  " css, less {{{
      NeoBundle 'skammer/vim-css-color'
      NeoBundle 'groenewege/vim-less'
      NeoBundle 'mattn/zencoding-vim'
      NeoBundle 'hail2u/vim-css3-syntax'
  " }}}
  " js {{{
      NeoBundle 'juvenn/mustache.vim'
      NeoBundle 'kchmck/vim-coffee-script'
      NeoBundle 'othree/javascript-libraries-syntax.vim'
      NeoBundle 'AndrewRadev/inline_edit.vim'
  " }}}
  " git {{{
      NeoBundle 'tpope/vim-fugitive'
      NeoBundle 'airblade/vim-gitgutter'
  " }}}
  " Utilities {{{
      NeoBundle 'tpope/vim-repeat'
      NeoBundle 'YankRing.vim'
      NeoBundle 'bufexplorer.zip'
      NeoBundle 'Shougo/vimshell'
      NeoBundle 'Shougo/vimproc'
      NeoBundle 'godlygeek/tabular'
  " }}}
  " markdown {{{
      NeoBundle 'tpope/vim-markdown'
      NeoBundle 'suan/vim-instant-markdown'
  " }}}
  " colorschemes {{{
    NeoBundle 'biskark/vim-ultimate-colorscheme-utility'
    NeoBundle 'flazz/vim-colorschemes'
    NeoBundle 'altercation/vim-colors-solarized'
    NeoBundle 'Lokaltog/vim-distinguished'
    NeoBundle 'sjl/badwolf'
    NeoBundle 'chriskempson/tomorrow-theme'
    NeoBundle 'w0ng/vim-hybrid'
    NeoBundle 'zaiste/Atom'
    NeoBundle 'tomasr/molokai'
    NeoBundle 'tpope/vim-vividchalk'
    NeoBundle 'jellybeans.vim'
    NeoBundle 'Sift'
    NeoBundle 'blackboard.vim'
    NeoBundle 'wombat256.vim'
    NeoBundle 'dhruvasagar/vim-railscasts-theme'
    NeoBundle 'Mustang2'
    NeoBundle 'xterm16.vim'
    NeoBundle 'Pychimp/vim-luna'
    NeoBundle 'burnttoast256'
  " }}}
  " Fancy {{{
      NeoBundle 'uguu-org/vim-matrix-screensaver'
      NeoBundle 'kien/rainbow_parentheses.vim'
      NeoBundle 'bling/vim-airline'
      NeoBundle 'nathanaelkane/vim-indent-guides'
      NeoBundle 'yonchu/accelerated-smooth-scroll'
      if has('gui_macvim')
        "NeoBundle 'Dinduks/vim-holylight'
      endif
  " }}}
  " Others {{{
    NeoBundle 'tpope/vim-eunuch'
    NeoBundle 'tpope/vim-speeddating'
    NeoBundle 'tpope/vim-unimpaired'
    NeoBundle 'Lokaltog/vim-easymotion'
    NeoBundle 'Spaceghost/vim-matchit'
    if executable('ack')
        NeoBundle 'mileszs/ack.vim'
    endif

    NeoBundle 'peterhoeg/vim-tmux'
    NeoBundle 'zaiste/tmux.vim'
    NeoBundle 'benmills/vimux'
    NeoBundle 'slim-template/vim-slim'
    NeoBundle 'vim-scripts/scratch.vim'
    NeoBundle 'takac/vim-hardtime'
    NeoBundle 'mips.vim'
    NeoBundle 'moll/vim-bbye'
  " }}}
" }}}
filetype plugin indent on
" Leader {{{
  let mapleader = ","
  let maplocalleader = "\\"
" }}}
" Configs {{{
  set nocompatible 			" leave vi-compatibility mode
  set encoding=utf-8 			" unicode encoding by default
  set title                   " show title in terminal
  set ttyfast
  set hidden                  " buffer hidden, not closed, when abandoned
  set noexrc
  set gdefault        " Global searching as default
  set linebreak
  set synmaxcol=800
  set showcmd
  set lisp
  set nostartofline
  set history=1000
  set visualbell                      " supress audio/visual error
  set invcursorcolumn
  set backspace=indent,eol,start
  set relativenumber
  set lazyredraw
  set hlsearch
  set autowrite
  set autoread
  set shiftround
  set incsearch
  set showmatch
  set cursorline
  set notimeout
  set ttimeout
  set ttimeoutlen=10
  set laststatus=2
  set report=0
  set ruler               " always show current positions along the bottom
  set list
  set listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
  set showbreak=↪
  set updatetime=4000
  set complete=.,w,b,u,t
  set completeopt=longest,menuone,preview
" }}}
" Folding {{{
  set foldlevelstart=0
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
  "set splitbelow

" }}}
" Tabs, spaces, wrapping {{{
  set tabstop=4
  set shiftwidth=4
  set expandtab
  set wrap
  set wm=4
  set formatoptions=qrn1
  set textwidth=80
  set smarttab
  set autoindent
  "set smartindent
" }}}
" Backups {{{

set noswapfile
set nobackup
set nowritebackup
set autowriteall

" }}}
" Triggers {{{
"au FocusLost * :wa " auto save when losing focus
au VimResized * :wincmd = " resize splits when the window is resized
" }}}
" Wildmenu {{{
"set wildchar=<Tab>
set wildmode=longest:full:list
set wildignore+=*.o,*.pyc,.DS_Store
set wildignore+=*.orig
set wildignore+=*.javac,*.aux,*.out,*.toc
set wildignore+=*.sw?,*.exe,*.dll,*.manifest
set wildignore+=migrations
set wildignore+=*.jpg,*.bmp,*.jpeg,*.gif,*.png

" }}}
" Navigation {{{
  " Tabs {{{
    nnoremap <C-l> gt
    nnoremap <C-h> gT
    nnoremap gl <C-w>l

    " QQ - quit tab
    nnoremap qq :QuitTab<cr>
    command! QuitTab call s:QuitTab()
    function! s:QuitTab()
        try
            tabclose
        catch /E784/    " can't close last tab
            qall
        endtry
    endfunction
  " }}}
  " Splits {{{
    nmap gh <C-w>h
    nmap gk <C-w>k
    nmap gj <C-w>j
  " }}}
" }}}
" Plugin settings {{{
  " SuperTab {{{
    "let g:SuperTabDefaultCompletionType = "context"
    "let g:SuperTabNoCompleteAfter=['^', ',', '\s']
    "let g:SuperTabNoCompleteBefore=['^', ',', '\s']

  " }}}
  " DelimitMate {{{
    let delimitMate_excluded_regions = "Comment,String" 
  " }}}
  " Gundo {{{
    nnoremap <F5> :GundoToggle<cr>
  " }}}
  " NERDCommenter {{{
    map <leader>/ <plug>NERDCommenterToggle
  " }}}
  " Syntastic {{{
    nnoremap <leader>e :Errors<cr>
    let g:syntastic_check_on_open = 0
    let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list =0
  " }}}
  " NERDTree {{{
    nnoremap <leader>nt :NERDTree
    nnoremap <F2> :NERDTreeToggle<cr>
    let g:NERDTreeHighlightCursorline=1
    let g:NERDTreeWinSize=30
    let g:NERDTreeIgnore=['\~$', '.*\pyc$', '.class[[file]]', 'pip-log\.txt$', '.DS_Store']
    let g:NERDTreeShowHidden=1
    let g:NERDTreeDirArrows=1
    let g:NERDTreeMinimalUI=1
    let g:NERDChristmasTree=1
    let g:NERDTreeChDirMode=2
    "let g:NERDTreeMapJumpFirstChild = 'gK'
    nnoremap <leader>ntf :NERDTreeFind<cr>
    " change the current dir to that of the opening file
    autocmd bufenter * cd %:p:h
  " }}}
  " CtrlP {{{
        map <leader>p :CtrlP<cr>
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
        let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/](\.git|\.hg|\.svn)$',
            \ 'file': '\.exe$\|\.so$\|\.javac$\|\.pyc$'
            \ }

    " }}}
  " Tagbar {{{
          nnoremap <silent> <leader>l :TagbarToggle<cr>
          let g:tagbar_foldlevel = 2
          let g:tagbar_width = 30
    " }}}
  " Python-Mode {{{
        let g:virtualenv_stl_format = '[%n]'
        " :VirtualEnvDeactivate
        " :VirtualEnvList
        " :VirtualEnvActivate spam
        " :VirtualEnvActivate <tab>
      
        let g:ropevim_enable_shortcuts = 1
        let g:pymode_rope_goto_def_newwin = "vnew"
        let g:pymode_breakpoint = 1
        let g:pymode_syntax = 1
        let g:pymode_syntax_builtin_objs = 1
        let g:pymode_syntax_builtin_funcs = 1
        let g:pymode_rope = 0
        let g:pymode_rope_extended_complete = 0
        let g:pymode_lint_write = 0
        let g:pymode_run_key = 'R'
        let g:pymode_lint = 1
        let g:pymode_indent = 1
        let g:pymode_rope_vim_completion = 1
        let g:pymode_rope_always_show_complete_menu = 0
        let g:pymode_syntax_print_as_function = 1
    " }}}
  " Solarized {{{
      let g:solarized_menu = 1
      if has('gui_running')
          call togglebg#map("<F6>")
      endif
  " }}}
  " RainbowParentheses {{{
    nnoremap <leader>R :RainbowParenthesesToggle<cr>
  " }}}
  " Browser Refresh {{{
    map <silent><leader>r  :RRB<cr>
  " }}}
  " Vim Git Gutter {{{
    " enable vim-gitgutter by default
    let g:gitgutter_enabled = 0
  " }}}
  " VimShell {{{
    let g:vimshell_editor_command = "/usr/local/bin/mvim"
  " }}}
  " Jedi-vim {{{
    let g:jedi#autocompletion_command="<Ctrl-Space>"
  " }}}
  " Zencoding {{{
    let g:use_zen_complete_tag = 1
  " }}}
  " IndentGuides {{{
  " }}}
  " Vim Hardtime {{{
    let g:hardtime_default_on = 1
  " }}}
" }}}
  " Filetype-specific {{{
    " OCaml {{{
      augroup ft_ocaml
        au!
        au FileType ocaml setl ts=2 sts=2 sw=2 ai si
        if has('gui_macvim')
          colorscheme hybrid
        endif
      augroup END
    " }}}
    " Python {{{
      augroup ft_python
        au!
        if has('gui_running')
            "autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
            "autocmd BufEnter * match OverLength /\%81v.\+/
        endif
      augroup END
    " }}}
    " Django {{{
      augroup ft_django
        au!
        au FileType htmldjango setl ts=2 sts=2 sw=2
        if has('gui_running')
            "autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
            "autocmd BufEnter * match OverLength /\%81v.\+/
        endif
      augroup END
    " }}}
    " html {{{
      augroup ft_html
        au!
        au FileType html,jinja,htmldjango setl ts=2 sts=2 sw=2 syn=htmldjango fdm=indent
        au FileType html,jinja,htmldjango fold=manual
        au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>f Vatzf
        au FileType html,jinja,htmldjango nmap <buffer> <localleader>t viikojozf
        au FileType html,jinja,htmldjango nnoremap <buffer> <localleader>= Vat=
      augroup END
    " }}}
    " asm {{{
      augroup ft_asm
        au!
        au BufEnter asm setl syn=mips ts=4
        au BufEnter asm set noexpandtab
      augroup END
    " }}}
    " Css, Less {{{
      augroup ft_css
        au!
        au FileType css setl ts=2 sw=2 sts=2
        au FileType less setl ts=2 sw=2 sts=2
        au FileType *.less setl ts=2 sw=2 sts=2
      augroup END
    " }}}
    " Js {{{
      augroup ft_js
        au!
        au FileType js setl ts=2 sts=2 sw=2
        au FileType jquery setl ts=2 sts=2 sw=2
      augroup END
    " }}}
    " java {{{
      augroup ft_java
        au!
        au FileType java setl ts=2 sts=2 sw=2
      augroup END
    " }}}
    " php {{{
      augroup ft_php
        au!
        au FileType php setl ts=2 sts=2 sw=2
      augroup END
    " }}}
    " vim {{{
      augroup ft_vim
        au!
        au FileType vim setl foldmethod=marker ts=2 sts=2 sw=2 si ai
        au BufEnter *pentadactylrc setl foldmethod=marker ts=2 sts=2 sw=2 syn=vim ft=vim 
      augroup END
    " }}}
    " markdown {{{
      augroup ft_markdown
        au!
        au FileType markdown setl ts=2 sts=2 sw=2 fo-=t
        autocmd BufEnter *.markdown setlocal wrap fo-=t spell cc=""
      augroup END
    " }}}
    " ruby {{{
      augroup ft_ruby
        au!
        au BufRead,BufNewFile Vagrantfile set filetype=ruby
      augroup END
    " }}}
    " json {{{
      augroup ft_json
        au!
        autocmd BufRead,BufNewFile *.json set ft=javascript
      augroup END
    " }}}
  " }}}
" Environment (GUI/Console) {{{
syntax on
if has('gui_running')
    set background=dark
    colorscheme hybrid
    set colorcolumn=81
    if has('gui_macvim')
        set guifont=Inconsolata:h17
        set transparency=10
        "set fullscreen
        set fuopt+=maxhorz
        set fuopt+=maxvert
    elseif has('gui_gtk')
        set guifont=Monospace\ 11
    elseif has('gui_win32')
        echo ":("
    endif
    set guioptions-=L
    set guioptions-=M
    set guioptions-=r
    highlight SpellBad term=underline gui=undercurl guisp=Orange
else
    set t_Co=256
    color wombat256mod
endif
" }}}
" Utlitiy Functions {{{
    " Relative Number {{{
    function! g:ToggleRelativeNumber()
        if &relativenumber
            setlocal number
        else
            setlocal relativenumber
        endif
    endfunction
    nnoremap <silent> <f1> :call g:ToggleRelativeNumber()<cr>
    " }}}
  " Show syntax highlighting groups for word under cursor {{{
    function! <SID>SynStack()
        if !exists("*synstack")
            return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc
    nmap <C-s> :call <SID>SynStack()<cr>
  " }}}
  " Transparency {{{
    nnoremap <F9> :set transp+=5<cr>:set transp<cr>
    nnoremap <F10> :set transp-=5<cr>:set transp<cr>
  " }}}
  " Toggle Indicators {{{
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
      au!
      au bufwritepost ~/.vimrc
      \ source ~/.vimrc |
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
    inoremap <F4> <esc>:set invcursorcolumn<cr>a
    vnoremap <F4> <esc>:set invcursorcolumn<cr>
  " }}}
  " Previous/next buffers {{{
    map <M-D-Left>  :bp<cr>
    map <M-D-Right> :bn<cr>
  " }}}
  " Fast scrolling {{{
    nnoremap <C-e>  3<C-e>
    nnoremap <C-y>  3<C-y>
    nmap J 5j
    nmap K 5k
    xmap J 5j
    xmap K 5k
  " }}}
  " easier moving of code blocks {{{
    vnoremap < <gv
    vnoremap > >gv
  " }}}
  " Save a keystroke {{{
    "nnoremap ; :
   " }}}
  " Stop using the arrow keys {{{
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
  " }}}
" }}}
  " Quick editing {{{
    nnoremap <leader>rc :vsp $MYVIMRC<cr>
    nnoremap <leader>grc :vsp $MYGVIMRC<cr>
    nnoremap <leader>zsh :vsp ~/.zshrc<cr>
    nnoremap <leader>prc :vsp ~/.pentadactylrc<cr>
  " }}}
  " Search {{{
    nmap <leader>s  :%s/
    vmap <leader>s  :%s/
    nnoremap / /\v
    vnoremap / /\v
    nnoremap <leader>y  :nohls<cr>
  " }}}


  " Make Y consistent with D and C
  map Y y$
  " Escape {{{
  imap kj <esc>
  imap jj <esc>
  " }}}
    
  " sorting functions
  vnoremap <leader>S :sort<cr>
  " toggle spell-checking
  map <f7> :setlocal spell!<cr>



  nnoremap j gj
  nnoremap k gk
  xnoremap j gj
  xnoremap k gk

  " Change case {{{
    nnoremap <C-o> gUiw
    nnoremap <C-i> gUiwea
  " }}}

  " Send visual selection to gist.github.com as a private filetyped Gist
  " Requires the gist command line tool ( brew install gist )
  " thanks Steve Losh!
  vnoremap <leader>G :w !gist -p -t %:e \| pbcopy<cr>
  vnoremap <leader>UG :w !gist -p \| pbcopy<cr>
" }}}


