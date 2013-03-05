if has('gui_running')
    set background=dark
    "colorscheme Tomorrow-Night-Eighties
    colorscheme badwolf
    "set colorcolumn=85
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
    if has('gui_macvim')
        "set guifont=Inconsolata-dz\ for\ Powerline:h14
        "set guifont=Inconsolata:h18
        set guifont=Menlo:h14
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

augroup gvimrcs
    au!
    au bufwritepost ~/.gvimrc
                \ source ~/.vimrc |
                \ source ~/.gvimrc |
                \ if exists('g:Powerline_loaded') |
                \ silent! call Pl#Load()
                \ endif
augroup END
