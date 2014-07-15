" vimrc
" Author: Kaung Htet Zaw <emoosx@gmail.com>
" Source: http://github.com/emoosx/dotvim

set nocompatible
filetype off
" Bundles installed {{{
  " Vundle {{{
    if has('vim_starting')
        set rtp+=~/.vim/bundle/Vundle.vim
    endif
    call vundle#begin()
    Plugin 'gmarik/Vundle.vim'      " Let Vundle manage itself
    let g:vundle_default_git_proto = 'git'
    " }}}
  " Coding {{{
      if executable('lua')
        Plugin 'Shougo/neocomplete.vim'
        Plugin 'Shougo/neosnippet'
        Plugin 'Shougo/neosnippet-snippets'
      endif
      " NeoBundleFetch 'Valloric/YouCompleteMe'
      Plugin 'sjl/gundo.vim'
      Plugin 'Raimondi/delimitMate'        "matching quotes, brackets ., etc
      Plugin 'scrooloose/nerdcommenter'    "commenting
      Plugin 'scrooloose/syntastic'        "syntax wise error checking
      Plugin 'scrooloose/nerdtree'         "filebrowser
      if executable('ctags')
        Plugin 'majutsushi/tagbar'         "source code browsing
      endif
      Plugin 'tpope/vim-surround'          "quoting/parenthizing made simple
      Plugin 'sheerun/vim-polyglot'        " a collection of syntax
      " Plugin 'kshenoy/vim-origami'        "handle all folding
      Plugin 'editorconfig/editorconfig-vim'
  " }}}
  " python {{{
      Plugin 'kien/ctrlp.vim'
      Plugin 'klen/python-mode'
      Plugin 'jmcantrell/vim-virtualenv'
      Plugin 'emoosx/vim-conceal'
  " }}}
  " LaTeX {{{
      " Plugin 'jcf/vim-latex'
  " }}}
  " Scala {{{
      Plugin 'derekwyatt/vim-scala'
  " }}}
  " OCaml {{{
      "Plugin 'def-lkb/vimbufsync'
  " }}}
  " Haskell {{{
    Plugin "dag/vim2hs"
  " }}}
  " web {{{
    Plugin 'zoeesilcock/vim-caniuse'
  " }}}
  " html {{{
      Plugin 'docunext/closetag.vim'
      Plugin 'tmhedberg/matchit'             "extend % for tags .,etc
  " }}}
  " css, less {{{
      Plugin 'ap/vim-css-color'
      Plugin 'mattn/emmet-vim'
  " }}}
  " js {{{
      Plugin 'othree/javascript-libraries-syntax.vim'
      Plugin 'pangloss/vim-javascript'
      let g:used_javascript_libs = 'jquery'
      Plugin 'mklabs/grunt.vim'
      Plugin 'greatghoul/vim-web-indent'
  " }}}
  " go {{{
      Plugin 'fatih/vim-go'
  " }}}
  " git {{{
      Plugin 'tpope/vim-fugitive'
      Plugin 'airblade/vim-gitgutter'
      Plugin 'idanarye/vim-merginal'
  " }}}
  " Utilities {{{
      Plugin 'tpope/vim-repeat'               " repeating of plugin commands
      "Plugin 'Shougo/vimshell'
      " Plugin 'Shougo/vimproc', {              " interactive command exe
            " \ 'build' : {
            " \     'mac' : 'make -f make_mac.mak',
            " \    },
            " \ }
      Plugin 'godlygeek/tabular'               " tabular formatting
      Plugin 'wellle/targets.vim'              " additional text obj
      Plugin 'kana/vim-submode'                " resizing splits
  " }}}
  " colorschemes {{{
    Plugin 'biskark/vim-ultimate-colorscheme-utility'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'itchyny/landscape.vim'
    Plugin 'Lokaltog/vim-distinguished'
    Plugin 'sjl/badwolf'
    Plugin 'chriskempson/tomorrow-theme', { 'rtp' : 'vim/' }
    Plugin 'w0ng/vim-hybrid'
    Plugin 'zaiste/Atom'
    Plugin 'tomasr/molokai'
    Plugin 'tpope/vim-vividchalk'
    Plugin 'jellybeans.vim'
    Plugin 'blackboard.vim'
    Plugin 'wombat256.vim'
    Plugin 'Mustang2'
    Plugin 'Pychimp/vim-luna'
    Plugin 'junegunn/seoul256.vim'
    Plugin 'baskerville/bubblegum'
    Plugin 'daylerees/colour-schemes', { 'rtp' : 'vim/' }
    Plugin 'reedes/vim-colors-pencil'
    Plugin 'chriskempson/base16-vim'
    Plugin 'jeetsukumaran/vim-mochalatte'
  " }}}
  " Fancy {{{
      Plugin 'uguu-org/vim-matrix-screensaver'
      Plugin 'kien/rainbow_parentheses.vim'
      Plugin 'bling/vim-airline'
      Plugin 'nathanaelkane/vim-indent-guides'

      Plugin 'rizzatti/funcoo.vim'
      Plugin 'rizzatti/dash.vim'

      Plugin 'junegunn/goyo.vim'
      Plugin 'jaxbot/semantic-highlight.vim'
  " }}}
  " Others {{{
    Plugin 'tpope/vim-eunuch'
    Plugin 'tpope/vim-speeddating'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'Lokaltog/vim-easymotion'
    if executable('ack')
        Plugin 'mileszs/ack.vim'
    endif
    " Plugin 'slim-template/vim-slim'
    Plugin 'vim-scripts/scratch.vim'
    Plugin 'takac/vim-hardtime'
    Plugin 'mips.vim'
    Plugin 'moll/vim-bbye'
      " Plugin 'jaxbot/brolink.vim'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'itchyny/calendar.vim'
    Plugin 'MarcWeber/vim-addon-local-vimrc'
    " }}}
  " Writing {{{
    " Plugin 'reedes/vim-pencil'
    Plugin 'reedes/vim-litecorrect'
    Plugin 'tpope/vim-markdown'
    " }}}
  " }}}
call vundle#end()
filetype plugin indent on
" Leader {{{
  let mapleader = ","
  let maplocalleader = "\\"
" }}}
" Configs {{{
  set regexpengine=1
  syntax enable
  set nocompatible        " leave vi-compatibility mode
  set encoding=utf-8      " unicode encoding by default
  set title               " show title in terminal
  set ttyfast
  set hidden              " buffer hidden, not closed, when abandoned
  set noexrc              " enables reading of .vimrc in the current directory
  set gdefault            " global searching as default
  set linebreak
  set synmaxcol=800
  set lazyredraw
  set showcmd
  set lisp
  set nostartofline
  set history=1000
  set visualbell          " supress audio/visual error
  set invcursorcolumn
  set backspace=indent,eol,start
  set relativenumber
  set showmode            " show the current mode
  set mousehide           " hide the mouse pointer while typing
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
  set wm=2
  set ts=2
  set sts=2
  set sw=2
  set smartindent
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
    nnoremap <C-l> gt
    nnoremap <C-h> gT
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
  " YouCompleteMe {{{
    let g:ycm_filetype_specific_completion_to_disable = {"vim": "xx"}
  " }}}
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
    " let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list =0
    let g:syntastic_mode_map = { 'mode': 'active',
                                \ 'active_filetypes': ['python'],
                                \ 'passive_filetypes': ['html'] }
    let g:syntastic_javascript_checkers=['jshint']
  " }}}
  " NERDTree {{{
    nnoremap <leader>nt :NERDTree<cr>
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
        map <leader>p :CtrlP<cr>
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
        let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/](\.git|\.hg|\.svn|build)$',
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
        let g:pymode_doc_bind = '<C-k>'
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

        nnoremap <leader>pr :PymodeRun<cr>
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
  " Fugitive {{{
    nnoremap <leader>gs :Gstatus<cr>
    nnoremap <leader>gw :Gwrite<cr>
    nnoremap <leader>gp :Git push<cr>
  " }}}
  " Vim Git Gutter {{{
    let g:gitgutter_enabled = 1 " enable git gutter by default
    nnoremap <leader>gg :GitGutterLineHighlightsToggle<cr>
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
  " Emmet {{{
    let g:use_emmet_complete_tag = 1
  " }}}
  " vim-javascript {{{
    let javascript_enable_domhtmlcss = 1
  " }}}
" }}}
  " Filetype-specific {{{
    " General {{{
      augroup ft_general
        au!
        " au FileType * setl ts=2 sts=2 sw=2 ai si
        " autocmd BufWritePost * syntax enable | doautocmd filetypedetect BufRead "%"
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
        endif
      augroup END
    " }}}
    " ruby {{{
      augroup ft_ruby
        au!
        au FileType ruby setl ts=2 sts=2 sw=2 ai ci
      augroup END
    " }}}
    " html {{{
      " augroup ft_html
        " au!
        " au FileType html,jinja,htmldjango setl ts=2 si ai sts=2 sw=2 syn=htmldjango ft=htmldjango fdm=manual nnoremap <buffer> <localleader>f Vatzf
        " au FileType html,jinja,htmldjango nmap <buffer> <localleader>t viikojozf
        " au FileType html,jinja,htmldjango nmap <buffer> <localleader>= Vat=
      " augroup END
    " }}}
    " Css, Less {{{
      augroup ft_css
        au!
        au FileType css,less setl foldmethod=marker foldmarker={,}
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
        " au BufEnter *pentadactylrc set foldmethod=marker ts=2 sts=2 sw=2 syn=vim ft=vim 
      augroup END
    " }}}
    " markdown {{{
      augroup ft_markdown
        au!
        au FileType markdown setl ts=2 sts=2 sw=2 fo-=t
        " autocmd BufEnter *.markdown setlocal wrap fo-=t spell cc=""
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
set background=dark
set colorcolumn=81
if has('gui_running')
    if has('gui_macvim')
        set guifont=Fira\ Mono\ OT:h14
        colorscheme base16-default
        set transparency=1
        set fuopt+=maxhorz
        set fuopt+=maxvert
        set nofu
        set lsp=1
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
    colorscheme gruvbox
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
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
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
