" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 全局配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"关掉兼容模式
set nocompatible

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

"taglist
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 20
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
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
