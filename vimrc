" ----------------------------------------------------------------------
"   Kaung Htet Zaw
"   emoosx@gmail.com
"   .vimrc

"   Inspired by the .VIMRC of these awesome devs
"       https://github.com/altercation/es-etc.git
"       https://github.com/sjl/dotfiles.git
    
" ----------------------------------------------------------------------
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Environment
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    set nocompatible 			" leave vi-compatibility mode
    set encoding=utf-8 			" unicode encoding by default
    set title                   " show title in terminal
    set hidden                  " buffer hidden, not closed, when abandoned
    set noexrc
    set linebreak
    set scrolloff=3

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" GUI Options
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    if has('gui_running')
        set background=dark
        colorscheme badwolf

        " Font
        set guifont=Inconsolata-dz\ for\ Powerline:h14

        " Disable all toolbars
        set go-=T
        set go-=l
        set go-=L
        set go-=r
        set go-=R

        " Highlight spelling mistakes
        highlight SpellBad term=underline gui=undercurl guisp=Orange

        " Fullscreen Options
        set fullscreen
        set fuoptions=maxvert,maxhorz
        set transparency=3

    else
        let &t_Co=256
        colorscheme railscasts3
    endif

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Various Configurations
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    set nostartofline                   " don't jump to the start of line when scrolling
    set visualbell                      " supress audio/visual error
    set backspace=indent,eol,start      " make backspace more flexible
    set number                          " show line numbers
    "set numberwidth=3                   " until 99999 lines
    "set linespace=3                    " vertical spacing

    " Search and Highlight
    " -------------------------------------------
        set hlsearch                " Highlight search
        set incsearch
        set showmatch

    " Case
    " -------------------------------------------
        set ignorecase
        set smartcase

    " Characters display
    " -------------------------------------------
        set list
        "set listchars=tab:▸\ ,extends:❯,precedes:❮
        set listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
        set showbreak=↪

    " Location Indicators
    " -------------------------------------------
        set nocursorcolumn              " highlight current column, off
        set cursorline                  " hightlight current line
        
    " Screen Drawing
    " -------------------------------------------
        set linespace=0         " don't insert extra pixel lines between rows
        set lazyredraw          " don't redraw while running macros
        set ttyfast             " fast redraw screen

    " Status Indicators
    " -------------------------------------------
        set showcmd             " show the command being typed
        set showmode            " show insert, replace & visual mode indicator
        set notimeout           " no command timeout
        set laststatus=2        " always show the status line
        set visualbell          " blink
        set report=0            " report this or greater number of changed lines
        set ruler               " always show current positions along the bottom
        
    " Completion
    " -------------------------------------------
        set wildchar=<Tab>
        "set wildmode=list:longest
        set wildmode=longest:full
        set completeopt=longest,menuone,preview

        " File type specific completion
        " -------------------------------------------
            autocmd FileType python set omnifunc=pythoncomplete#Complete
            autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
            autocmd FileType css set omnifunc=csscomplete#CompleteCSS
            autocmd FileType javascript set syn=jquery

        inoremap <leader>a <C-x><C-o> " key combo to toggle omnicomplete
    
    " Splitting Windows
    " -------------------------------------------
        set splitright
        "set splitbelow

    " Text Formatting and Layout
    " -------------------------------------------
        set wrap                " soft wrap long lines
        set textwidth=79        " maximum width of text line during insert
        set formatoptions=qrn1
        set colorcolumn=80
        highlight ColorColumn ctermbg=233
 
        " Indentation
        " -------------------------------------------
            set autoindent      " copy indent form current when starting a new line

        " Tabs
        " -------------------------------------------
            set expandtab       " convert tabs into spaces
            set tabstop=4       
            set softtabstop=4   " tab conversion to number of spaces
            set shiftwidth=4    " auto-indent amount
            set shiftround      " when at 3 spaces, when I hit > .. go to 4, not 5
            set smarttab
            set expandtab

    " Backup & saving
    " -------------------------------------------
        set noswapfile
        set nobackup
        set nowritebackup
        set nowb

        set autowriteall
        set autoread
        "autocmd FocusLost * silent! wall

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

    " Shortcut to edit .vimrc file
    " -------------------------------------------
        nmap ,rc :tabedit $MYVIMRC   

    " Shortcut to clear highlighted search
    " -------------------------------------------
        nnoremap <esc> :noh<return><esc>

    " Leader Keys
    " -------------------------------------------
        let mapleader = ","
        let maplocalleader = ";"

    " Stop using the arrow keys
    " -------------------------------------------
        nmap <up> <nop>
        nmap <down> <nop>
        nmap <left> <nop>
        nmap <right> <nop>

    " kj - Get out of insert mode
    " -------------------------------------------
        imap kj     <Esc>

    " Launching External Apps
    " -------------------------------------------
        abbrev ff :! open -a firefox.app %:p<cr>
        abbrev chrome :! open -a google\ chrome.app %:p<cr>
        abbrev sf :! open -a safari.app %:p<cr>
         
    " Make Y consistent with D and C
    " -------------------------------------------
        map Y           y$

    " Indent/unindent visual mode selection
    " -------------------------------------------
        vmap <tab>      >gv
        vmap <S-tab>    <gv

    " Search
    " -------------------------------------------
        nmap <leader>s  :%s/
        vmap <leader>s  :s/

    " Split screen
    " -------------------------------------------
        map <leader>v   :vsp<CR>

    " Move between split screens
    " -------------------------------------------
        map <leader>w   ^Ww
        map <leader>=   ^W=
        map <leader>j   ^Wj
        map <leader>k   ^Wk
        nmap <C-j>      <C-w>j
        nmap <C-k>      <C-w>k
        nmap <C-h>      <C-w>h
        nmap <C-l>      <C-w>l

    " Remove highlighting post-search
    " -------------------------------------------
        nmap <leader>y  :nohls<CR>

    " Auto-indent whole file
    " -------------------------------------------
        nmap <leader>=  gg=G``
        map <silent> <F7> gg=G``    :delmarks z<CR>:echo "Reformatted."<CR>

    " Fast scrolling
    " -------------------------------------------
        nnoremap <C-e>  3<C-e>
        nnoremap <C-y>  3<C-y>

    " Previous/next quickfix file listings (e.g. search results)
    " -------------------------------------------
        map <M-D-Down>  :cn<CR>
        map <M-D-Up>    :cp<CR>

    " Previous/next buffers
    " -------------------------------------------
        map <M-D-Left>  :bp<CR>
        map <M-D-Right> :bn<CR>

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
    " Sbd
    " -------------------------------------------
        nnoremap <silent> <leader>bd :Sbd<cr>

    " Vimroom
    " -------------------------------------------
        nnoremap  <silent> <leader>vr :VimroomToggle<cr>    

    " JumpToCSS
    " -------------------------------------------
        nnoremap <leader>jc :JumpToCSS<cr>
        let g:jumptocss_autoclose=1     " In order for the quickfix window to close

    " Prefixr
    " -------------------------------------------
        vmap <leader>pfx :Prefixr<cr>

    " Rainbow Parentheses
    " -------------------------------------------
        nnoremap <leader>R :RainbowParenthesesToggle<cr>
        let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]
        let g:rbpt_max = 16

    " Always on
    "au VimEnter * RainbowParenthesesToggle
    "au Syntax * RainbowParenthesesLoadRound
    "au Syntax * RainbowParenthesesLoadSquare
    "au Syntax * RainbowParenthesesLoadBraces
    "
    let g:syntastic_check_on_open=1

    " PEP 8
    " -------------------------------------------
        let g:pep8_map='<leader>8'

    " Python 
    " -------------------------------------------
        let python_highlight_all = 1
        au FileType python syn keyword pythonDecorator True None False self

        autocmd BufNewFile,BufRead *.py setlocal textwidth=80

        " Documentation
        let g:pymode_doc = 1        " load show documentation plugin
        let g:pymode_doc_key = 'D'  " key for showing python docs
        let g:pydoc = 'pydoc'       " executable command for docs search

        " Run Python codes
        let g:pymode_run = 1

        " Key for running python code
        let g:pymode_run_key = '<leader>r'

        " Code checking
        let g:pymode_lint = 0

        " Switch pylint or pyflakes code checker values (pylint, pyflakes)
        let g:pymode_lint_checker = "pylint"

        " Pylint configuration file
        let g:pymode_lint_config = "$HOME/.pylintrc"

        " Check code every save
        let g:pymode_lint_write = 1

        " Auto open cwindow if errors are found
        let g:pymode_lint_cwindow = 1

        " Auto jump on first error
        let g:pymode_lint_jump = 0

        " Place error signs
        let g:pymode_lint_signs = 1

        " Minimum height of pylint error window
        let g:pymode_lint_minheight = 3

        " Maximum height of pylint error window
        let g:pymode_lint_maxheight = 6


        " Load rope plugin
        let g:pymode_rope = 1

        " Auto create and open ropeproject
        let g:pymode_rope_auto_project = 1

        " Enable autoimport
        let g:pymode_rope_enable_autoimport = 1

        " Auto generate global cache
        let g:pymode_rope_autoimport_generate = 1

        let g:pymode_rope_autoimport_underlineds = 0

        let g:pymode_rope_codeassist_maxfixes = 10

        let g:pymode_rope_sorted_completions = 1

        let g:pymode_rope_extended_complete = 1

        "let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"])

        let g:pymode_rope_confirm_saving = 1

        let g:pymode_rope_global_prefix = "<C-x>p"

        let g:pymode_rope_local_prefix = "<C-c>r"

        let g:pymode_rope_vim_completion = 1

        let g:pymode_rope_guess_project = 1

        let g:pymode_rope_goto_def_newwin = 0

        let g:pymode_rope_always_show_complete_menu = 0

        " Load breakpoints plugin
        let g:pymode_breakpoint = 1

        " Key for set/unset breakpoint
        let g:pymode_breakpoint_key = '<leader>b'

        " Autoremove unused whitespaces
        let g:pymode_utils_whitespaces = 1

        " Auto fix vim python paths if virtualenv enabled
        let g:pymode_virtualenv = 1

        " Set default pymode python indent options
        let g:pymode_options_indent = 1

        " Set default pymode python fold options
        let g:pymode_options_fold = 1

        " Set default pymode python other options
        let g:pymode_options_other = 1

        " Enable pymode's custom syntax highlighting
        let g:pymode_syntax = 1

    " Molokai Colorscheme
    " -------------------------------------------
        let g:molokai_original = 1

    " Powerline
    " -------------------------------------------
        let g:Powerline_symbols = 'fancy'

    " NERDTree & NERDCommenter
    " -------------------------------------------
        nmap ,nt :NERDTree
        nmap <F2> :NERDTreeToggle<cr>
        let NERDTreeShowHidden=1
        let NERDTreeDirArrows=1     " arrow characters instead of +~
        "let NERDTreeMinimalUI=1     " minimal UI
        map \|  :NERDTreeFind<CR>   " show current find

        let NERDTreeHighlightCursorline=1
        let NERDTreeIgnore=['\~$', '.*\pyc$', 'pip-log\.txt$']

        let g:NERDTreeWinSize=30    " default width for NERDTree pane

        " Automatically change current directory to that of the file in the buffer
        autocmd BufEnter * cd %:p:h

        " NERDCommenter
        " ------------------------------
        map <leader>/   <plug>NERDCommenterToggle   

    " T comment
    " -------------------------------------------
        "map <leader>/ <c-_><c-_>

    " SuperTab
    " -------------------------------------------
        let g:SuperTabDefaultCompletionType = "context"
        "let g:SuperTabDefaultCompletionType = "<c-n>"
        let g:SuperTabLongestHighlight = 1

    " Zen-Coding
    " -------------------------------------------
        let g:user_zen_expandabbr_key = '<C-e>'     " Change zen-coding plugin expansion key
        let g:user_zen_leader_key = '<C-y>'         " Change zen-coding leader key for all

    " Conque-Shell
    " -------------------------------------------
        nmap <leader>cts :ConqueTermSplit bash<cr>  
        nmap <leader>vcts :ConqueTermVSplit bash<cr>

    " Command-T
    " -------------------------------------------
        map <leader>t :CommandT<cr>
        map <leader>T :CommandTFlush<cr>
        set wildignore+=*.o,.git,*.pyc

    " Tagbar
    " -------------------------------------------
        map <leader>l :TagbarToggle<cr>

    " Solarized Color Scheme
    " -------------------------------------------
        "let g:solarized_contrast="့့့့့high"
        "let g:solarized_visibility="high"

    " Path to Ctags
    " -------------------------------------------
        let g:Tlist_Ctags_Cmd='/opt/local/bin/ctags'

    " Processing
    " -------------------------------------------
        let g:processing_doc_style="web"

    " TwitVim
    " -------------------------------------------
        let twitvim_login = "emoosx:3m0tux"
        let twitvim_enable_python = 1
        map <leader>dm :SendDMTwitter       " send direct message
        map <leader>tw :PosttoTwitter<cr>   " post a new tweet

    " Pydiction
    " -------------------------------------------
        " let g:pydiction_location = '/Users/emoosx/.vim/bundle/pydiction/complete-dict'
    " Ctags
    " -------------------------------------------
        nnoremap <leader><cr> :silent !/opt/local/bin/ctags -R . && sed -i .bak -E -e '/^[^	]+	[^	]+.py	.+v$/d' tags<cr>

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Whitespace & highlithg ( language-specific config )
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    " -------------------------------------------
    " Strip trailing whitespace for code files on save
    " -------------------------------------------

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

        " Insert ' => '
        " -------------------------------------------
            autocmd FileType ruby imap  <Space>=><Space>

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Auto saving VIMRC
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    augroup myvimrchooks
        au!
        autocmd bufwritepost .vimrc so $MYVIMRC
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

        nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
        nmap <silent> <leader>pw :call DoWindowSwap()<CR>


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

                nmap <C-g> :call <SID>SynStack()<CR>

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

        nnoremap <F3> :call ToggleIndicators()<CR>
        inoremap <F3> <ESC>:call ToggleIndicators()<CR>a
        vnoremap <F3> <ESC>:call ToggleIndicators()<CR>

    " Toggle CursorColumn 
    " -------------------------------------------------------------
        nnoremap <F4> :set invcursorcolumn<CR>
        inoremap <F4> <ESC>:set invcursorcolumn<CR>a
        vnoremap <F4> <ESC>:set invcursorcolumn<CR>

    " Font Scaling
    " -------------------------------------------------------------
        let s:pattern = '^\(.*\:h\)\([1-9][0-9]*\)$'
        let s:minfontsize = 6
        let s:maxfontsize = 100
        function! AdjustFontSize(amount)
        if has("gui_running")
            let fontname = substitute(&guifont, s:pattern, '\1', '')
            let cursize = substitute(&guifont, s:pattern, '\2', '')
            let newsize = cursize + a:amount
            if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
            let newfont = fontname . newsize
            let &guifont = newfont
            endif
        else
            echoerr "Command requires gui version of vim to run."
        endif
        endfunction

        function! LargerFont()
            call AdjustFontSize(1)
        endfunction

        command! LargerFont call LargerFont()

        function! SmallerFont()
            call AdjustFontSize(-1)
        endfunction

        command! SmallerFont call SmallerFont()

        let i=0
        function! ScaleFont()
            if &columns > 1
            let origcol=&columns
            let thiscol=&columns
            for i in range(1, 3)
                echo "count is" i " and columns =" thiscol
                if thiscol > 88
                    call AdjustFontSize(1)
                    let thiscol=&columns
                    redrawstatus!
                    redraw!
                endif
            endfor
            else
                echo "too big"
            endif
            let w:DebugThisA = thiscol
            let w:DebugThisB = &columns
        endfunction
