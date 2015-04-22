


if(has("win32") || has("win95") || has("win64") || has("win16")) "判定当前操作系统类型
    let g:iswindows=1
else
    let g:iswindows=0
endif

if has("autocmd")
	filetype plugin indent on "根据文件进行缩进
	augroup vimrcEx
	au!
	autocmd FileType text setlocal textwidth=78
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\ exe "normal! g`\"" |
		\ endif
	augroup END
else 
	"智能缩进，相应的有cindent，官方说autoindent可以支持各种文件的缩进，但是效果会比只支持C/C++的cindent效果会差一点，但笔者并没有看出来
	set autoindent " always set autoindenting on 
endif " has("autocmd")

if(g:iswindows==1) "允许鼠标的使用
"防止linux终端下无法拷贝
    if has('mouse')
		set mouse=a
	endif
	au GUIEnter * simalt ~x
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 全局配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"关掉兼容模式
set nocompatible

set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用

"设置历史记录步数
set history=400

"开启文件类型判断插件
filetype plugin on
filetype indent on

"当文件在外部被修改，自动更新该文件
set autoread

"设置快速保存和退出
"快速保存为,s
"快速退出（保存）为,w
"快速退出（不保存）为,q
"nmap <leader>s :w!<cr>
"nmap <leader>w :wq!<cr>
"nmap <leader>q :q!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 字体和颜色
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"开启语法
syntax enable

"设置字体

"设置配色
colorscheme murphy 

"高亮显示当前行
set cursorline
hi cursorline guibg=#222222
hi CursorColumn guibg=#333333

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文件和备份
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"关闭自动备份
set nobackup
set nowb

"关闭交换文件
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"开启折叠
"set nofen
set fdl=0
set fdc=2
set fdm=syntax

" 关闭文件时 自动保存视图
au BufWinLeave * silent mkview
au BufWinEnter * silent loadview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文字处理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置（软）制表符宽度为4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

"set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 缩进
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动缩进
set ai

"智能缩进
set si

"设置缩进的空格数为4
set autoindent

"设置自动缩进:即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set shiftwidth=4

"设置使用 C/C++ 语言的自动缩进方式
"set cindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim 界面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
"set so=7

"Turn on WiLd menu
"set wildmenu

"显示标尺
set ruler

"设置命令行的高度
set cmdheight=1

"显示行数
set nu

"显示匹配的括号([{和}])
set showmatch

"高亮显示搜索的内容
set hlsearch


" NERDTree
map <F10> :NERDTreeToggle<CR>
nmap <silent> <F4> :TagbarToggle<CR>
	let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
    "let g:tagbar_ctags_bin = 'ctags'
	"let g:tagbar_width = 30

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim 内部使用的字符编码方式，包括 Vim 的 buffer (缓冲区)、菜单文本、
"消息文本等。用户手册上建议只在 .vimrc 中改变它的值，
"事实上似乎也只有在 .vimrc 中改变它的值才有意义。
set encoding=utf-8
"set encoding=prc

"Vim 启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的
"字符编码方式，并且将 fileencoding 设置为最终探测到的字符编码方式。
"因此最好将 Unicode 编码方式放到这个列表的最前面。
"set fileencodings=Unicode,utf-8,gb2312,gbk,gb18030,latin-1
"set fencs=utf-8,Unicode,gb2312,gbk,gb18030,latin-1,cp936
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,latin-1,prc
"set fileencodings=ucs-bom,utf8,prc

"Vim 中当前编辑的文件的字符编码方式，
"Vim 保存文件时也会将文件保存为这种字符编码方式。
set fileencoding=utf-8
"set fileencoding=prc

" termencoding: Vim 所工作的终端 (或者 Windows 的 Console 窗口) 
" 的字符编码方式。这个选项对 GUI 模式的 gVim 无效，
" 而对 Console 模式的 Vim 而言就是Windows 控制台的代码页 
" (对于 Windows 而言)，并且通常我们不需要改变它。
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
"set termencoding=prc
let &termencoding=&encoding
