###一、插件信息

1.[NERDTree](http://www.vim.org/scripts/script.php?script_id=1658)

提供展示文件/目录列表的功能，比自带的文件浏览器要好很多

2.[snipmate](http://www.vim.org/scripts/script.php?script_id=2540>)

对于代码段补全插件介绍

http://www.vimer.cn/2010/04/vimgvim%E4%B8%AD%E5%AF%B9snipmate%E7%9A%84%E5%B0%8F%E5%A6%99%E7%94%A8.html

3.[tagbar](http://www.vim.org/scripts/script.php?script_id=3465)

更适合面向对象语言使用的显示函    数列表插件-tagbar.vim 介绍

http://www.vimer.cn/2011/03/%E6%9B%B4%E9%80%82%E5%90%88%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1%E8%AF%AD%E8%A8%80%E4%BD%BF%E7%94%A8%E7%9A%84%E6%98%BE%E7%A4%BA%E5%87%BD%E6%95%B0%E5%88%97%E8%A1%A8%E6%8F%92%E4%BB%B6-tagbar-vim.html

*需要依赖  stags*

**vim需要7.3以上  ctags  要5.8**
###二、如何使用

按F10 开启 NERDTree

按F4 开启 tagbar

snipmate 请看上面的介绍


###三、更新2014-12-23

使用tagbar 替换掉了taglist  如需使用taglist 直接在vimrc中添加

	map <F8> :TlistToggle<CR> 

