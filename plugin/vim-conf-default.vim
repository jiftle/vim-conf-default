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

"设置编码,处理中文乱码,文件默认utf8编码
set fileencodings=utf-8,ucs-bom,cp936,big5
set encoding=utf-8

" 不兼容vi，避免以前版本的bug和局限
set nocompatible

" 处理backspace键不能删除问题
set backspace=indent,eol,start

" 显示空白字符，效果比较好
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" ctags
if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" 自动读入文件，外部改动文件，vim检测到就自动读入
set autoread


" 显示行号
set nu
" 设置tabstop
set tabstop=2 softtabstop=2 shiftwidth=2
" 自动缩进
set autoindent
" 用空格代替制表符
set expandtab

" 高亮当前行
set cursorline


