set wrap
set linebreak
set nolist
set modeline
set sw=4 ts=4
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
let g:acp_behaviorPerlOmniLength = 0
au FileType python setl ts=4 et sw=4 softtabstop=4

map <F2>  :!ctags --exclude='*.vim' -R . >/dev/null<CR>


colorscheme peachpuff

let g:winManagerWindowLayout = "FileExplorer|TagList"
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr>
