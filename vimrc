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
    NeoBundleFetch 'Shougo/neobundle.vim'  " }}}
  " Coding {{{
      if executable('lua')
        NeoBundleFetch 'Shougo/neocomplete.vim'
      endif
      NeoBundle 'Valloric/YouCompleteMe'
      NeoBundle 'sjl/gundo.vim'
      NeoBundle 'Raimondi/delimitMate'        "matching quotes, brackets ., etc
      NeoBundle 'scrooloose/nerdcommenter'    "commenting
      NeoBundle 'scrooloose/syntastic'        "syntax wise error checking
      NeoBundle 'scrooloose/nerdtree'         "filebrowser
      if executable('ctags')
        NeoBundle 'majutsushi/tagbar'         "source code browsing
      endif
      NeoBundle 'tpope/vim-surround'          "quoting/parenthizing made simple
      "NeoBundle 'kshenoy/vim-origami'        "handle all folding
      NeoBundle 'sheerun/vim-polyglot'        "a collection of all syntax
  " }}}
  " python {{{
      NeoBundle 'kien/ctrlp.vim'
      NeoBundle 'klen/python-mode'
      NeoBundle 'jmcantrell/vim-virtualenv'
      NeoBundle 'emoosx/vim-conceal'
      let g:no_vim_conceal=1
  " }}}
  " LaTeX {{{
      "NeoBundle 'jcf/vim-latex'
  " }}}
  " OCaml {{{
      "NeoBundle 'def-lkb/vimbufsync'
  " }}}
  " html {{{
      NeoBundle 'docunext/closetag.vim'
      NeoBundle 'tmhedberg/matchit'             "extend % for tags .,etc
  " }}}
  " css, less {{{
      NeoBundle 'ap/vim-css-color'
      NeoBundle 'mattn/emmet-vim'
  " }}}
  " js {{{
      NeoBundle 'othree/javascript-libraries-syntax.vim'
      NeoBundle 'pangloss/vim-javascript'
  " }}}
  " git {{{
      NeoBundle 'tpope/vim-fugitive'
      NeoBundle 'airblade/vim-gitgutter'
  " }}}
  " Utilities {{{
      NeoBundle 'tpope/vim-repeat'               " repeating of plugin commands
      "NeoBundle 'Shougo/vimshell'
      NeoBundle 'Shougo/vimproc', {              " interactive command exe
            \ 'build' : {
            \     'mac' : 'make -f make_mac.mak',
            \    },
            \ }
      NeoBundle 'godlygeek/tabular'               " tabular formatting
      NeoBundle 'wellle/targets.vim'              " additional text obj
  " }}}
  " colorschemes {{{
    NeoBundle 'biskark/vim-ultimate-colorscheme-utility'
    NeoBundle 'flazz/vim-colorschemes'
    NeoBundle 'altercation/vim-colors-solarized'
    NeoBundle 'Lokaltog/vim-distinguished'
    NeoBundle 'sjl/badwolf'
    NeoBundle 'chriskempson/tomorrow-theme', { 'rtp' : 'vim/' }
    NeoBundle 'w0ng/vim-hybrid'
    NeoBundle 'zaiste/Atom'
    NeoBundle 'tomasr/molokai'
    NeoBundle 'tpope/vim-vividchalk'
    NeoBundle 'jellybeans.vim'
    NeoBundle 'blackboard.vim'
    NeoBundle 'wombat256.vim'
    NeoBundle 'Mustang2'
    NeoBundle 'Pychimp/vim-luna'
    NeoBundle 'junegunn/seoul256.vim'
    NeoBundle 'baskerville/bubblegum'
    NeoBundle 'daylerees/colour-schemes', { 'rtp' : 'vim/' }
    NeoBundle 'reedes/vim-colors-pencil'
  " }}}
  " Fancy {{{
      NeoBundle 'uguu-org/vim-matrix-screensaver'
      NeoBundle 'kien/rainbow_parentheses.vim'
      NeoBundle 'bling/vim-airline'
      NeoBundle 'nathanaelkane/vim-indent-guides'
      NeoBundle 'yonchu/accelerated-smooth-scroll'

      NeoBundle 'rizzatti/funcoo.vim'
      NeoBundle 'rizzatti/dash.vim'

      NeoBundle 'junegunn/goyo.vim'
      NeoBundle 'mhinz/vim-startify'
  " }}}
  " Others {{{
    NeoBundle 'tpope/vim-eunuch'
    NeoBundle 'tpope/vim-speeddating'
    NeoBundle 'tpope/vim-unimpaired'
    NeoBundle 'Lokaltog/vim-easymotion'
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
      " NeoBundle 'jaxbot/brolink.vim'
    NeoBundle 'ntpeters/vim-better-whitespace'
    NeoBundle 'noerrmsg.vim'
    NeoBundle 'itchyny/calendar.vim'
    " }}}
  " Writing {{{
    NeoBundle 'reedes/vim-thematic'
    " NeoBundle 'reedes/vim-pencil'
    NeoBundle 'reedes/vim-litecorrect'
    NeoBundle 'tpope/vim-markdown'

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
  set lazyredraw
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
" }}}
" Tabs, spaces, wrapping {{{
  set expandtab
  set wrap
  set wm=4
  set formatoptions=qrn1
  set textwidth=80
  set smarttab
  set autoindent
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
  " Buffers {{{
    nnoremap <C-l> :bnext<cr>
    nnoremap <C-h> :bprev<cr>
    "nnoremap gl <C-w>l
  " }}}
  " Splits {{{
    nmap gh <C-w>h
    nmap gk <C-w>k
    nmap gj <C-w>j
    nmap gl <C-w>l
  " }}}
" }}}
" Plugin settings {{{
  " LiteDFM {{{
    nnoremap <leader>z ::LiteDFMToggle<CR>i<Esc>`^
  " }}}
  " Neocomplete {{{
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup=1
    let g:neocomplete#enable_smart_case=1
    let g:neocomplete#sources#syntax#min_keyword_length=3
    let g:neocomplete#lock_buffer_name_pattern= '\*ku\*'
  " }}}
  " SuperTab {{{
    "let g:SuperTabDefaultCompletionType = "context"
    "let g:SuperTabNoCompleteAfter=['^', ',', '\s']
    "let g:SuperTabNoCompleteBefore=['^', ',', '\s']

  " }}}
  " DelimitMate {{{
    let delimitMate_excluded_regions = "Comment" 
    au FileType ocaml let b:delimitMate_quotes = "\""
  " }}}
  " Gundo {{{
    nnoremap <F5> :GundoToggle<cr>
  " }}}
  " NERDCommenter {{{
    map <leader>/ <plug>NERDCommenterToggle
    let g:NERDSpaceDelims=1
  " }}}
  " Syntastic {{{
    nnoremap <leader>e :Errors<cr>
    let g:syntastic_check_on_open = 0
    let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list =0
    let g:syntastic_mode_map = { 'mode': 'active',
                                \ 'active_filetypes': ['python'],
                                \ 'passive_filetypes': ['html'] }
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
    let g:NERDTreeHijackNetrw=1
    "let g:NERDTreeMapJumpFirstChild = 'gK'
    nnoremap <leader>ntf :NERDTreeFind<cr>
    " change the current dir to that of the opening file
    autocmd bufenter * cd %:p:h
  " }}}
  " CtrlP {{{
        map <leader>p :CtrlP
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

          let g:tagbar_type_css = {
          \ 'ctagstype' : 'Css',
              \ 'kinds'     : [
                  \ 'c:classes',
                  \ 's:selectors',
                  \ 'i:identities'
              \ ]
          \ }
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
        let g:pymode_run_key = 'R'
        let g:pymode_lint = 1       " code checking
        let g:pymode_indent = 1
        let g:pymode_rope_completion = 1
        let g:pymode_rope_complete_on_dot = 1
        let g:pymode_rope_always_show_complete_menu = 1
        let g:pymode_syntax_print_as_function = 1
    " }}}
  " Solarized {{{
      let g:solarized_menu = 1
      if has('gui_running')
          call togglebg#map("<F6>")
      endif
  " }}}
  " Badwolf {{{
    let g:badwolf_darkgutter = 1
    let g:badwolf_html_link_underline = 0
  " }}}
  " Pencil {{{
    let g:pencil_higher_contrast_ui=1
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
    let g:indent_guides_exclude_filetypes=['help', 'nerdtree', 'tagbar']
  " }}}
  " Airline {{{
      if !exists('g:airline_symbols')
        let g:airline_symbols = {}
      endif

      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#tabline#show_buffers = 1
      let g:airline#extensions#tabline#fnamemode = ':t'
  " }}}
  " Vim Hardtime {{{
    let g:hardtime_default_on = 0
    nnoremap <leader>ht :HardTimeToggle<cr>
  " }}}
  " Matchit {{{
    let loaded_matchit=1
  " }}}
  " Colorscheme-Utility {{{
    let g:ulti_color_excluded = ['nerdtree', 'help', 'tagbar', 'minibufexpl']
  " }}}
  " Thematic {{{
    let g:thematic#defaults = {
          \ 'background': 'dark',
          \ 'colorscheme': 'bubblegum',
          \ 'typeface': 'Fira Mono OT',
          \ 'font-size': 14,
          \ 'laststatus': 2,
          \ 'fullscreen': 1
          \ }
    let g:thematic#themes = {
          \ 'iawriter': { 'colorscheme': 'pencil',
          \               'background': 'light',
          \               'columns': 75,
          \               'font-size': 20,
          \               'fullscreen': 1,
          \               'laststatus': 0,
          \               'linespace': 8,
          \               'typeface': 'Cousine',
          \               'number-column-color-mute': 1
          \             },
          \ 'pencil_dark':{ 'colorscheme': 'pencil',
          \                 'airline-theme': 'badwolf',
          \                 'ruler': 1,
          \               },
          \ 'tomorrow_night': { 'colorscheme': 'Tomorrow-Night',
          \                     'airline-theme': 'badwolf'
          \                   },
          \ 'solarized_dark': { 'colorscheme': 'solarized',
          \                     'airline-theme': 'murmur'
          \                   },
          \ 'wombat256': { 'colorscheme': 'wombat256',
          \              },
          \ 'badwolf': { 'colorscheme': 'badwolf',
          \               'airline-theme': 'badwolf'
          \            },
          \ 'solarized_light': { 'colorscheme': 'solarized',
          \                     'background': 'light',
          \                     'airline-theme': 'solarized'
          \                   },
          \ 'python': { 'colorscheme': 'badwolf', 
          \             'airline-theme': 'ubaryd',
          \             'transparency': 4,
          \             'typeface': 'Inconsolata',
          \             'font-size': 16,
          \             'linespace' : 3
          \           },
          \ 'css': { 'colorscheme': 'luna', 
          \          'background': 'dark',
          \          'airline-theme': 'badwolf',
          \          'typeface': 'Cousine',
          \          'font-size': 14,
          \          'linespace': 2
          \        },
          \ 'php': { 'colorscheme': 'hybrid', 
          \          'background': 'dark',
          \          'airline-theme': 'badwolf',
          \          'typeface': 'Fira\ Mono\ OT',
          \          'font-size': 14,
          \          'linespace': 2
          \        },
          \ 'html': { 'colorscheme': 'badwolf', 
          \          'background': 'dark',
          \          'airline-theme': 'badwolf',
          \          'typeface': 'Cousine',
          \          'font-size': 14,
          \          'linespace': 2
          \        },
          \ 'c': {'typeface': 'Inconsolata',
          \       'linespace': 2,
          \       'colorscheme': 'Tomorrow-Night-Eighties',
          \       'font-size': 16
          \      }
          \ }
  " }}}
  " Vim-Pencil {{{
    " augroup pencil
      " autocmd!
      " autocmd FileType markdown call pencil#init()
      " autocmd FileType textile call pencil#init()
      " autocmd FileType text call pencil#init({'wrap': 'hard'})
    " augroup END

    " nnoremap <silent> <leader>ps: SoftPencil<cr>
    " nnoremap <silent> <leader>ph: HardPencil<cr>
    " nnoremap <silent> <leader>np: NoPencil<cr>
    " nnoremap <silent> <leader>pt: TogglePencil<cr>
  " }}}
  " Litecorrect {{{
    augroup litecorrect
      autocmd!
      autocmd FileType markdown call litecorrect#init()
      autocmd FileType textile call litecorrect#init()
    augroup END
  " }}}
" }}}
  " Filetype-specific {{{
    " General {{{
      augroup ft_general
        au!
        au FileType * setl ts=2 sts=2 sw=2 ai si
        autocmd BufWritePost * syntax enable | doautocmd filetypedetect BufRead "%"
      augroup END
    " }}}
    " C {{{
      augroup ft_c
        au!
        au FileType c setl ai cindent
        autocmd BUfNewFile,BufRead *.c set formatprg=astyle\ -T4pb
      augroup END
    " }}}
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
        au FileType python setl ts=4 sts=4 sw=4 ai ci
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
        au FileType html,jinja,htmldjango setl foldmethod=manual
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
    " html {{{
      augroup ft_html
        au!
        let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script"
        let g:html_indent_script1="inc"
        let g:html_indent_style1="inc"
        nnoremap <leader>ef mfggVG=`fzz 

      augroup END
    " }}}
    " Css, Less {{{
      augroup ft_css
        au!
        au FileType css setl foldmethod=marker foldmarker={,}
        au FileType css setl ts=2 sw=2 sts=2
        au FileType less setl ts=2 sw=2 sts=2
      augroup END
    " }}}
    " Js {{{
      augroup ft_js
        au!
        au FileType js setl ts=2 sts=2 sw=2 ai si
        au FileType javascript setl ts=2 sts=2 sw=2 ai si
        au FileType jquery setl ts=2 sts=2 sw=2 ai si
      augroup END
    " }}}
    " java {{{
      augroup ft_java
        au!
        au FileType java setl ts=2 sts=2 sw=2
        let java_highlight_functions="style"
        let java_allow_cpp_keywords=1
      augroup END
    " }}}
    " php {{{
      augroup ft_php
        au!
        au FileType php setl ts=2 sts=2 sw=2 si ai
      augroup END
    " }}}
    " apache {{{
      augroup ft_apache
        au!
        au FileType apache setl ts=4 sts=4 sw=4 ai si
      augroup END
    " }}}
    " vim {{{
      augroup ft_vim
        au!
        au FileType vim setlocal foldmethod=marker ts=2 sts=2 sw=2 si ai
        au BufEnter *pentadactylrc set foldmethod=marker ts=2 sts=2 sw=2 syn=vim ft=vim 
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
syntax enable
if has('gui_running')
    set background=dark
    set colorcolumn=81
    if has('gui_macvim')
        set guifont=Fira\ Mono\ OT:h14
        colorscheme laravel
        set transparency=5
        set fuopt+=maxhorz
        set fuopt+=maxvert
        set lsp=2
    elseif has('gui_gtk')
        set guifont=Monospace\ 11
    elseif has('gui_win32')
        echo ":("
    endif
    set guicursor+=a:blinkon0     " disable cursor blink
    set guioptions-=T
    set guioptions-=L
    set guioptions-=M
    set guioptions-=r
    highlight SpellBad term=underline gui=undercurl guisp=Orange
else
    set t_Co=256
    colorscheme wombat256mod
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

  :hi NonText guifg=bg

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
