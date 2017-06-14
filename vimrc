set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    " Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}

    " All of your Plugins must be added before the following line
    " http://vim-scripts.org/vim/scripts.html
    "Plugin 'https://github.com/Lokaltog/vim-powerline' 
    Plugin 'https://github.com/adelarsq/vim-grimmjow'
    Plugin 'https://github.com/vim-scripts/php.vim.git'
    Plugin 'https://github.com/scrooloose/nerdtree.git'
    Plugin 'https://github.com/Shougo/neocomplcache.vim.git' 
    Plugin 'dikiaap/minimalist'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"powerline
"set laststatus=2 
"set t_Co=256
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/ 
"set laststatus=2 " Always display the statusline in all windows
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set t_Co=256
"set encoding=utf-8
"let g:Powerline_symbols = 'fancy'

set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%y-%m-%d\ -\ %H:%M\")}

"statusline                                                                                                                                  
set statusline=  
set statusline+=%7*\[%n]                                  "buffernr  
set statusline+=%1*\ %<%F\                                "文件路径  
set statusline+=%2*\ %y\                                  "文件类型  
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''} 
" set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "编码2  
" set statusline+=%4*\ %{&ff}\
"文件系统(dos/unix..)   
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "语言 & 是否高亮，H表示高亮?  
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)  
set statusline+=%9*\ col:%03c\                            "光标所在列  
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Read only? Top/bottom  
function! HighlightSearch()  
  if &hls  
    return 'H'  
  else  
    return ''  
  endif  
endfunction  
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

"colorscheme grimmjow
set background=dark
"set background=light
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" 格式化高亮
syntax on
" 显示行号
set nu
" 自动检测文件类型
filetype plugin indent on
" 在缩进和遇到 Tab 键时使用空格替代
set expandtab
" 根据文件类型设置缩进格式
au FileType html,Python,vim,JavaScript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType php setl shiftwidth=4
au FileType php setl tabstop=4
" 自动对齐
set ai
" 依据上面的对齐格式
set si
set smarttab
set wrap
set lbr 
set tw=0
set foldmethod=syntax
"高亮光标所在行
set cul 
set cuc 
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮 
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 搜索逐字符高亮 
set hlsearch
set showmatch
set incsearch
"搜索忽略大小写
set ignorecase
" php 代码折叠
" let php_folding = 1


"""""""""""""""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

"""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <c-n> <c-p>
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable omni completion.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" 括号自动补全
if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

set t_Co=256
syntax on
colorscheme minimalist
"let g:airline_theme='minimalist'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.sh,.php,.py,.html文件，自动插入文件头 
autocmd BufNewFile *.php,*.sh,*.py,*.html exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif &filetype == 'python'
        call append(0, "#!/usr/bin/env python3.5")
        call append(1, "#coding:utf-8")
	    call append(line(".")+1, "") 
    elseif &filetype == 'php'
        call append(0,"<?php")
        call append(1,"/**")
        call append(2," * @Filename: ".expand("%t"))
        call append(3," * @Date: ".strftime("%Y-%m-%d %H:%M"))
        call append(4," * @Author: hyc")
        call append(5," * @Desc: ")
        call append(6,"*/")
	    call append(line(".")+1, "") 
    elseif &filetype == 'html'
        call append(0, "<!DOCTYPE html>")
        call append(1, "<html>")
        call append(2, "<head>")
        call append(3, "  <meta charset='utf-8'>")
        call append(4, "  <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'>")
        call append(5, "  <title>Examples</title>")
        call append(6, "</head>")
        call append(7, "<body>")
        call append(8, "") 
        call append(9, "</body>")
        call append(10,"</html>")
	endif
	"新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"去空行  
nnoremap <F2> :g/^\s*$/d<CR> 
"sh py php 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python3.5 %"
    elseif &filetype == 'php'
        exec "!php %"
	endif
endfunc

"代码格式优化化
map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc

"打开文件上次退出时的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
