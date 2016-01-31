set nocompatible
filetype off

"---------------------"
" Gestion des plugins "
"---------------------"

"Active la gestion des plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'Vundle/Vundle.vim'

" Depot github
" Plugin offrant un explorateur de fichier sympa
Plugin 'scrooloose/nerdtree'
" Plugin permettant de commenter facilement du code
Plugin 'scrooloose/nerdcommenter'
" Status bar amelioré
Plugin 'powerline/powerline', {'rtp': '/powerline/bindings/vim'}
" Ouverture rapide dans les fichier de l'arborescence
Plugin 'kien/ctrlp.vim'
" Snippet
Plugin 'msanders/snipmate.vim'
" Verification syntaxique
Plugin 'scrooloose/syntastic'
" Historique des suppressions
Plugin 'sjl/gundo.vim'
" Outils pour la programmation en python
Plugin 'klen/python-mode'
" Plugin silversearcher
Plugin 'rking/ag.vim'
" Todo list dans vim
Plugin 'vimoutliner/vimoutliner'
" Docker syntax
Plugin 'ekalinin/Dockerfile.vim'
" Latex
Plugin 'vim-latex/vim-latex'
" multi curseur
Plugin 'terryma/vim-multiple-cursors'
" diff in gutter
Plugin 'mhinz/vim-signify'
" color scheme gruvbox
Plugin 'morhetz/gruvbox'
" Ajoute le marquage de l'indentation
Plugin 'Yggdroot/indentLine'
" Fichier de syntax HTML5
"Plugin 'othree/html5.vim'
" Outils de programmation Arduino
Plugin 'yabb85/vim-arduino-ino'
" completion pour xml
Plugin 'sukima/xmledit'


" Depot vim-script
" Permet de naviguer dans les tags du code
Plugin 'taglist.vim'
" Permet de lister les todos present dans le code
Plugin 'TaskList.vim'
" Permet de controller Mercurial, cvs, svn, Git ...
Plugin 'vcscommand.vim'
" Efface les trailing space
Plugin 'DeleteTrailingWhitespace'
" Align les declaration de variable
Plugin 'Align'
" Permet les recherches multiples
Plugin 'MultipleSearch'
" Plugin d'auto completion
Plugin 'OmniCppComplete'
" libs utils
Plugin 'L9'
Plugin 'tomtom/tlib_vim'



"----------------"
" Plugin inactif "
"----------------"

" Fermeture automatique des accolades parentheses ...
"Plugin 'Raimondi/delimitMate'
"Plugin 'nathanaelkane/vim-indent-guides'
" Omni-completion basé sur clang
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'Valloric/YouCompleteMe'
" Outils pour la programmation en python
"Plugin 'davidhalter/jedi-vim'
" Wiki personnal dans vim
"Plugin 'tomtom/viki_vim'
" Docker syntax
" Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}


call vundle#end()


"-----------------"
" Option Générale "
"-----------------"

" Activation de l'indentation suivant le type de fichier
filetype indent on

" Activation des plugin selon le type de fichier
filetype plugin on

" Active le mode non compatible
set nocp

"Utilisation de la touche , en mapleader a la place de \
let mapleader = ","
let maplocalleader = ",,"

" Raccourcis pour l'ouverture d'un nouvelle onglet
noremap tn :<C-u>tabnew<cr>
noremap tc :<C-u>tabclose<cr>
noremap tm :<C-u>tabmove

" Encodage permettant l'utilisation de powerline
set encoding=utf-8

" Ouverture/Fermeture du browser avec la touche F4
map <F4> :NERDTreeToggle<cr>

" Ouverture de la liste des fonction et classe avec Shift+F4
map <S-F4> :TlistToggle<cr>

" Ouverture de l'historique des annulation avec Ctrl+F4
map <C-F4> :GundoToggle<cr>

" Sauvergarde de la session
map <F2> :mks! ~/.vim/session/last.vim <cr>
" Chargement de la session
map <F3> :source ~/.vim/session/last.vim <cr>

" taille de l'historique
:set history=100

" reactive le backspace en cas de soucis
set backspace=indent,eol,start

" Utilise les plugin installer par debian
"runtime! debian.vim


"--------------------"
" Apparence Générale "
"--------------------"

" Active la coloration syntaxique
syntax on

" Affiche le numero des lignes
set nu

" Definir le jeu de couleur par defaut
"colorscheme desert
colorscheme gruvbox
set background=dark

" Police
"set guifont=DejaVuSansMono\ 11
"set guifont=Ubuntu\ Mono\ 11
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13

" Surligne la ligne actuel
set cursorline

" Modifie la couleur de fond de la ligne surligné
hi CursorLine guibg=#3e3e3e

" Powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Gundo
let g:gundo_right = 1

" Couleur de menu (completion ...)
hi Pmenu ctermbg=210 guibg=#555555

" Affiche les Bookmarks
let NERDTreeShowBookmarks=1

" Surligne le resultat d'une recherche
set hls

" Active la coloration de Doxygen
let g:load_doxygen_syntax=1


"------------"
" Identation "
"------------"

" Reglage de l'indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ai

autocmd FileType cpp set ts=2 sw=2 sts=2
autocmd FileType yaml set ts=2 sw=2 sts=2
autocmd FileType java set ts=4|set sw=4|set sts=4

" Remplace les tabulations par des espaces
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*cxx,*hxx,*.c,*.h,*.java set expandtab

" Supprime automatiquement les trailing space
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" surligner le text depassant les 80 colonnes
map <silent> <F5> <Esc>:call HiOver()<CR>

"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"au VimEnter * :IndentGuidesEnable

"hi Conceal guifg=#FF0F0F guibg=#0000FF
let g:indentLine_char = '|'
"let g:indentLine_color_gui = "#55FF00"
"set list lcs=tab:\¦\
"set list lcs=tab:\|\


"-------------"
" Latex Suite "
"-------------"

" Activation du plugin latex suite
let g:tex_flavor='latex'

" Latex suite accent
imap <C-b> <Plug>Tex_MathBF
imap <C-c> <Plug>Tex_MathCal
imap <C-l> <Plug>Tex_LeftRight
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine

" Format de sortie latex par defaut
let g:Tex_DefaultTargetFormat="pdf"

" Viewer pdf
let g:Tex_ViewerRule_pdf="evince"

" désactivation des smart quote
let g:Tex_SmartKeyQuote='0'


"-------------------"
" Checker de syntax "
"-------------------"

" Option pour checker la syntax C++ avec la norme C++11
let g:syntastic_cpp_compiler_options = ' -std=c++11'


"---------------"
" Option PyMode "
"---------------"

" Active l'auto completion
let g:pymode = 1
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Checker la syntax du code python
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pylint', 'pep8']

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Support des breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Ne pas replier le code automatiquement
let g:pymode_folding = 1

" Execute le script python dans le buffer courrant
let g:pymode_run_key = 'R'
let g:pymode_run = 1

"-----------------"
" Option Jedi-vim "
"-----------------"

" Completion sur les touche Ctrl+space
"let g:jedi#autocompletion_command = "<C-Space>"

" Refactoring avec <leader>r
"let g:jedi#rename_command = "<leader>r"

" Montre toutes les utilisation de la fonction
"let g:jedi#related_names_command = "<leader>n"

" Voir la documentation avec la touche Shift+K
"let g:jedi#pydoc = "K"

" Aller a la definition
"let g:jedi#get_definition_command = "<leader>d"

" Aller a la ligne d'import du module correspondant
"let g:jedi#goto_command = "<leader>g"

"---------------"
" Ctrl-P plugin "
"---------------"

" filtre de fichier pour ctrlP
set wildignore+=*.o,*.swp,*.so


"------------"
" Versioning "
"------------"

map <silent> <F6> <Esc>:VCSBlame<CR>
map <silent> <C-F6> <Esc>:VCSLog<CR>
map <silent> <F7> <Esc>:VCSDiff<CR>

"------------------------------"
" Auto completion avec omnicpp "
"------------------------------"

" Charge le fichier de tags pour la stl
set tags+=~/.vim/tags/cpp
" Charge le fichier de tags pour la Xlib
set tags+=~/.vim/tags/xlib

" Active la completion pour le C/C++
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"set completeopt=menuone,menu,longest
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


"----------------"
" Option Arduino "
"----------------"
let g:vim_arduino_auto_open_serial = 1
let $PATH .= ':/home/disciple/.local/bin'




"---------------------------------------------------"
" FONCTION PERSONNALISEES                           "
"---------------------------------------------------"

" Active la coloration des caracteres qui depassent les 80 colonnes
autocmd BufWinEnter * let w:over=0
function! HiOver()
  if w:over == 1
    let w:over=0
    call matchdelete(w:m1)
  else
    let w:over=1
    let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
  endif
endfunction
