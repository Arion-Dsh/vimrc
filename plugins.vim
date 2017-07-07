call plug#begin('~/.vim/bundle')

"""""""""""
" 'terryma/vim-multiple-cursors'
"""""""""""

Plug 'terryma/vim-multiple-cursors'

" tpope/vim-surround
"
Plug 'tpope/vim-surround'
"==============================
"easymotion/vim-easymotion
"==============================

Plug 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)
let g:EasyMotion_smartcase = 1

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"
" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)")

"==============================
" complete
"==============================

" neocomplete

Plug 'Shougo/neocomplete'
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#completions_command = "<C-n>"

let g:neocomplete#sources#syntax#min_keyword_length = 2
"let g:neocomplete#max_list=15


"Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \     "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Auto-completion
set completeopt-=preview " Remove annoying scratch window on completion
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType html,markdown,xml setlocal omnifunc=htmlcomplete#CompleteTags

Plug 'jiangmiao/auto-pairs'


"==============================================================
"interface
"==============================================================

" Status line
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_right_alt_sep =' '
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Theme
let g:gruvbox_italic=1
"Plug 'morhetz/gruvbox'
"Plug 'fxn/vim-monochrome'
"Plug 'jnurmine/Zenburn'
Plug 'fatih/molokai'
Plug 'altercation/vim-colors-solarized'
let g:molokai_original = 1

"=================================================
" General
"=================================================
" the silver searcher
Plug 'rking/ag.vim'

Plug 'scrooloose/nerdtree'
let NERDTreeShowBookmarks=0
let NERDTreeShowHidden=0
let NERDTreeChDirMode=2 " Keep cwd in sync with tree root
let NERDTreeQuitOnOpen=0 " Do not close tree after opening a file
let g:nerdtree_tabs_open_on_gui_startup=0
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>f :execute 'NERDTreeFind'<CR>

Plug 'tpope/vim-surround'

Plug 'dkprice/vim-easygrep'

Plug 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode='ra' " Use parent directory with '.git' file as root (r) or current directory if none (a)
let g:ctrlp_custom_ignore="/(.log$\|public\/|\.(git|hg|svn)|ui\/)"

Plug 'godlygeek/csapprox'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'mbbill/undotree'
nnoremap <Leader>u :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle=1

Plug 'tpope/vim-repeat'

" Syntax checking
Plug 'scrooloose/syntastic'

" Commenting
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

" Git
Plug 'tpope/vim-fugitive'
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

Plug 'majutsushi/tagbar'
" GO support (https://github.com/jstemmer/gotags)
nmap <silent> <leader>tag :TagbarToggle<CR>
let g:tagbar_width = 24

" Git gutter

Plug 'airblade/vim-gitgutter'

" Javascript
Plug 'leafgarland/typescript-vim'
Plug 'leshill/vim-json'
Plug 'groenewege/vim-less'
"Plug 'pangloss/vim-javascript'

" Ruby
let g:ruby_path = system('echo $HOME/.rbenv/shims')
Plug 'vim-ruby/vim-ruby'
"autocmd FileType ruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby let g:rubycomplete_buffer_loading=1
"autocmd FileType ruby let g:rubycomplete_classes_in_global=1

" rbenv
Plug 'tpope/vim-rbenv'

" tmux
Plug 'tmux-plugins/vim-tmux'

" bbye
Plug 'gwww/vim-bbye'
nnoremap <Leader>q :Bdelete<CR>

" impaired
Plug 'tpope/vim-unimpaired'

" Misc
Plug 'tpope/vim-markdown'
Plug 'mhinz/vim-startify'

"Plug 'sourcegraph/sourcegraph-vim'
"
"
"=============================================================
" syntastic check
" ============================================================

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']


"=============================================================
" GO - golang
"=============================================================
Plug 'fatih/vim-go'
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_fmt_fail_silently = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_metalinter_enabled = ['vet', 'deadcode', 'golint', 'ineffassign']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint',  'deadcode', 'ineffassign']
let g:go_list_type = "quickfix"

"Plug 'AndrewRadev/splitjoin.vim'
"Plug 'garyburd/go-explorer'

" Present
"Plug 'raphael/vim-present-simple'

" FISH'go',
Plug 'dag/vim-fish'


" Use tabs in GO
autocmd Filetype go set softtabstop=4
autocmd Filetype go set shiftwidth=4
autocmd Filetype go set tabstop=4
autocmd Filetype go set noexpandtab
autocmd Filetype go set nolist " Do not hightlight tabs in go or other things in go, gofmt will clean it all up anyway
"au FileType go nmap <Leader>gs <Plug>(go-implements)
"au FileType go nmap <Leader>gi <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"au FileType go nmap <leader>gr <Plug>(go-referrers)
"au FileType go nmap <leader>gb <Plug>(go-build)
"au FileType go nmap <leader>gt <Plug>(go-test)
"au FileType go nmap <leader>gc <Plug>(go-coverage)
"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"au FileType go nmap <Leader>dt <Plug>(go-def-tab)
"au FileType go nmap <Leader>e <Plug>(go-rename)


" docker file
Plug 'ekalinin/Dockerfile.vim'

"================================
" python
"================================
Plug 'vim-scripts/indentpython.vim'
" Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'Chiel92/vim-autoformat'

" Path to python interpreter for vim

" pep8 & flake8 before :w save
autocmd BufWritePost,FileWritePost *.py execute 'Autoformat' | cwindow
" autocmd BufWritePost,FileWritePost *.py execute ':call Flake8()' | cwindow
let g:formatter_yapf_style = 'google'

let g:jedi#completions_enabled = 0
au fileType python let g:jedi#completions_enabled = 1
"let g:jedi#auto_initialization = 0
let g:jedi#init_python = '/usr/bin/python3'
let g:jedi#force_py_version = 3
let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<Tab>"
"let g:jedi#rename_command = "<leader>r"
"let g:jedi#completions_enabled = 0


call plug#end()
