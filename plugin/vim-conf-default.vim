" File: vim-conf-default.vim
" Author: jiftle
" Description:
"   vim的默认配置，省去每次换电脑都需要设置的问题
" Last Modified: 一月 07, 2020

if exists('g:loaded_vim_config_default') || &compatible
  finish
else
  let g:loaded_vim_config_default = 'yes'
endif

" 不兼容vi，避免以前版本的bug和局限
set nocompatible

"设置编码,处理中文乱码,文件默认utf8编码
set fileencodings=utf-8,ucs-bom,cp936,big5
set encoding=utf-8


" 处理backspace键不能删除问题
set backspace=indent,eol,start

" " --------- 真彩色 ----------
" if has("termguicolors")
"     set termguicolors
" 	
" 	" 解决vim的Bug
" 	if &term =~# '^screen'
" 		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" 		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" 	endif
" endif


" ctags
if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" 自动读入文件，外部改动文件，vim检测到就自动读入
set autoread
 
 
" 显示行号
set nu
" 设置tabstop
set tabstop=4 softtabstop=4 shiftwidth=4
" 自动缩进
set autoindent
" 用空格代替制表符，因为Makefile文件只能使用TAB，使用时，自己执行命令
" set expandtab
 
" 高亮当前行
set cursorline

" ---------------- 根据不同平台，设置默认的配色方案 ---------------
" if has('unix')
"   "设置默认配色方案
"   colorscheme default
" elseif has('win64')
"   " win7
"   colorscheme darkblue
" elseif has('win32')
"   " xp
"   colorscheme blue
" else
" endif
 
