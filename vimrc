call pathogen#infect()
set nocompatible			" Don't maintain compatibilityw tih vi
syntax on				" Highlight known syntax

filetype on
filetype plugin on
filetype plugin indent on

" Configuration
" -------------
" let &t_Co=256               " Enable 
colorscheme zmrok
set background=dark
set guifont=Inconsolata:h14
set guioptions-=T			" Remove GUI toolbar
set guioptions-=r           " Remove RHS scroll-bar
set guioptions-=L
set visualbell				" Supress audio/visual error ell
set notimeout				" No command timeout
set showcmd			    	" Show typed command prefixes
set ruler

set expandtab
set tabstop=4
set autoindent
set smarttab
set shiftwidth=4
set number
set ignorecase
set smartcase


"set list
"set listchars=tab:▸\ ,trail:¬
set showmatch
set hidden
set splitright
" set splitbelow
set wildmode=list:longest
set scrolloff=3
set cursorline
set wrap                    " Wrap lines

set autoread
set noswapfile
set nobackup
set nowritebackup

set autowriteall
"autocmd FocusLost * silent! wall

" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" kj - get out of insert mode
imap kj         <Esc>

" Make Y consistent with D and C
map Y           y$

" Indent/unindent visual mode selection
vmap <tab>      >gv
vmap <S-tab>    <gv

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Move between screens
map <leader>w   ^Ww
map <leader>=   ^W=
map <leader>j   ^Wj
map <leader>k   ^Wk
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" Open .vimrc file in new tab.
map <D-<>       :tabedit ~/.vimrc<CR>

" Remove highlighting post-search
nmap <leader>y  :nohls<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G``    :delmarks z<CR>:echo "Reformatted."<CR>

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Previous/next buffers
map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>

" Easy access to the shell
map <Leader><Leader> :!

" Insert a blank link without leaving insert mode
:nnoremap <silent> <leader>k :pu! _<cr>:']+1<cr>   " on top
:nnoremap <silent> <leader>j :pu _<cr>:'[-1<cr>    " at the bottom


" MarkDown
" ---------
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>

" NERDTree
" --------
nmap ,nt :NERDTree
nmap ,nc :NERDTreeToggle
let NERDTreeShowHidden=1

" Showing current file
map \|      :NERDTreeFind<CR>

" Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

" Comment/uncomment lines
" map <leader>/   <plug>NERDCommenterToggle

" T comment
map <leader>/ <c-_><c-_>

" Small default width for NERDTree pane
let g:NERDTreeWinSize = 25


" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp :%s/\s\+$//e

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.json,*.css,*.less,*.sass,*.html,*.xml,*.erb,*.haml,*.feature :%s/\s\+$//e
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.god set filetype=ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile soloistrc set filetype=ruby

" Java, PHP
autocmd BufWritePre *.java,*.php :%s/\s\+$//e

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Consider question/exclamation marks to be part of a Vim word.
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Python, Django
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" Autocomplete
" ------------
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Key combo to toggle omni complete
inoremap <leader>a <C-x><C-o>

" So that the completation doesn't select the first item
set completeopt=longest,menuone

" Zen-Coding
" ----------




" .vimrc
" ------
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Shortcut to edit .vimrc file
nmap ,rc :tabedit $MYVIMRC


" Django-specific
let g:last_relative_dir = ''
nnoremap \1 :call RelatedFile ("models.py")<cr>
nnoremap \2 :call RelatedFile ("views.py")<cr>
nnoremap \3 :call RelatedFile ("urls.py")<cr>
nnoremap \4 :call RelatedFile ("admin.py")<cr>
nnoremap \5 :call RelatedFile ("tests.py")<cr>
nnoremap \6 :call RelatedFile ( "templates/" )<cr>
nnoremap \7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap \8 :call RelatedFile ( "management/" )<cr>
nnoremap \0 :e settings.py<cr>
nnoremap \9 :e urls.py<cr>

fun! RelatedFile(file)
    #This is to check that the directory looks djangoish
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

" Virtualenv
" ----------

" Add virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Launching External Apps
" -----------------------
abbrev ff :! open -a firefox.app %:p<cr>
abbrev chrome :! open -a google\ chrome\ canary.app %:p<cr>
abbrev safari :! open -a safari.app %:p<cr>

" Zen-Coding
" ----------

" Change zen-coding plugin expansion key to Ctrl-E
let g:user_zen_expandabbr_key = '<C-e>'

" Conque-Shell
" ------------

" Start a Shell in the Horizontal Split
nmap ,cs :ConqueTermSplit bash
nmap ,vcs :ConqueTermVSplit bash


let g:pydiction_location = '/Users/emoosx/.vim/bundle/pydiction/complete-dict'
