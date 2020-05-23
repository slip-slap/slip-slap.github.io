---
layout: post
title: "Terminal: Vim"
keywords: []
description: 
category: "linux"
tags: ["terminal"]
---
{% include JB/setup %}


### 1. Introduction 
This software is plugin system, so it is very flexible and diffcult to learn.
it heavily depends on the plugin and shortcut to improve the efficient.

<hr />

### 2. 常用功能 

#### 2.1 Setting  

1. set relativenumber!
2. set cursorline
3. syntax off  I spend a lot of time to fix this simple question, crap !!!!!!!!
4. adjust window width
```code
:nnoremap  <leader>+ :vertical res +10 <cr>
:nnoremap  <leader>- :vertical res -10<cr>
```



#### 2.2 register
To access a register, type **"a**, **a** is the name of the register. <br />
:reg to check out the content of the  register <br />
1. to paste from system clipboard on Mac  **"\*p**
2. to copy into system clipboard on Mac **"\*yy**

#### 2.3 format
1. select the lines of text you want to re-format:
```shell
v
```
2. reformat it
```shell
gq
```
#### 2.4 Code folding 
```shell
" 设置代码折叠方式
set foldmethod=indent
" 打开全部折叠
zR
```

#### 2.5 Search

1. /target 从文档的开始匹配目标字符串，n匹配下一个，N匹配上一个
2. ?target 从文档的结束位置匹配目标字符串，n匹配下一个，N匹配上一个

#### 2.6 Delete 
+ ctrl+w 删除光标所在行的光标之前的文字
+ ndd 删除光标所在行的后n行，包括光标所在行

#### 2.7 Split Screen

命令行的快捷键和图形界面的快捷键不一样，<font
color="red">图形界面的前缀键和命令键是同时按下的,命令行的前缀键和命令键常常分开</font>使用tmux时，它的前缀键为ctrl+b
+ ctrl+w 为前缀键，j k h l上下左右切换
+ ctrl+w 为前缀键 >可以改变窗口大小
+ sp file  水平打开
+ vsp file 垂直打开
#### 版本查看
:version 查看vim支持的插件，如python等
:set  show vars different from defaults
:h key-notation 查看键盘映射
:ctrl+r anti-cancel
:set colorcolumn=80 lenght marke





#### Code Complete 

ctrl+p 默认的代码补全功能是根据缓冲区中的内容进行正则匹配

#### javascript

在.vimrc配置文件中添加

```
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
```

ctrl+x ctrl+o 方向箭头选择补全的文本

#### 十六进制查看

在normal模式中输入":%!xxd"
切换回常规模式:":%!xxd -r"



#### auto indent

vim在粘贴代码时会自动缩进，把代码搞得一团糟糕，需要提前设置
+ set paste
+ set nopaste

copy into vim from GUI results missing line
+ before pasting to vim, make sure the Insert Mode is activated.
+ the reason is that paste character **i** or character **o** will trigger
  insert mode, and you will miss everying before

#### joining two lines with J
1. J joins the line the cursor is on with the line below


#### 同时打开多个文件

+ vim -On file1 file2 n表示要打开的文件数，O大写表示打开垂直窗口

#### vim中执行shell命令

+ !command
  不退出vim并执行shell命令command,输出命令显示在vim的命令区域，不改变当前编辑的文件内容
+ r !command 将shell命令command的结果插入到当前行的下一行

#### tab与空格替换
a tab could be a different number of columns depending on your enviroment

```
# substitue tab for space
:set ts=4
:set expandtab
:%retab!

# substitue space for tab
:set ts=4
:set noexpandtab
:%retab!
```


<hr />

### 3. Mode 

#### 3.1 Visual Mode

1. Character mode: v (lower-case)
2. Line mode: V(upper-case)
3. Block mode: Ctrl+v

#### 3.2 Normal Mode

```shell
# 映射G键到别的东西
:nnoremap G dd
# normal命令将顾及当前的所有映射,下面的命令将会删除光标所在行
:normal G
# normal!
```

#### 3.3 Recording Mode

record type character into register

1. press q to enter into recording mode in normal mode, and vim begin to record
   your operation
2. press q to end recording in normal mode
3. press @\<letter\> to replay the recorded operation 
<hr />


### 4. Plugin
1. For every plugin, you can refer to the instruction about how to use them.
2. and in the vimrc file to setting.

#### 4.1 vundle-plugin
1. BundleList 查看已经安装的插件

#### 4.2 YouCompleteMe-plugin
Maybe this is the most difficult plugin to install
1. YouCompleteMe itself work in client-server pattern
2. Everytime you start vim, the **thread systemd** will begin to work on some
   port. 
3. Actualy, you can start **system manually**, to check whether you install it
   properly

```shell
cd /path/to/YouCompleteMe/third_party/ycmd/
cat PYTHON_USED_DURING_BUILDING
/some/path/to/python3
cp ycmd/default_settings.json .
/some/path/to/python3 ycmd --options_file=default_settings.json
serving on http://localhost:<some port>
```




```shell
# 
git clone https://github.com/Valloric/YouCompleteMe.git
git submodule update --init --recursive
```

#### 4.3 NERDTree-plugin

1. install
- 在.vim文件下创建autoload和bundle子文件夹
- 下载pathogen.vim到autoload中

```shell
cd ~/.vim && mkdir autoload && mkdir bundle && cd bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

2. Add configuration to .vimrc file

```shell
execute pathogen#infect()
```
3. install NERDTree

```shell
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```

4. usage
- ctrl+w+w 切换窗口
- o 打开光标所在目录 O递归打开所有子目录
- p 回到光标坐在父目录
- r 刷新光标所在的子目录
- ? pop-up help document
<hr />
#### 4.4 CtrlP-plugin
1. Configuration
```shell
set runtimepath^=~/.vim/bundle/ctrlp.vim
```
<hr />

#### 4.6 powerline-plugin
#### 4.7 vimtex-plugin



参考内容 <br />
1. [learn vim the hardest way](http://learnvimscriptthehardway.onefloweroneworld.com/chapters/12.html) <br />
2. [vim tip and tricks](https://www.cs.swarthmore.edu/oldhelp/vim/help.html) <br />
3. [vim教程官方网站](https://vim.sourceforge.io/docs.php) <br />
4. [vim官方网站pdf教程](ftp://ftp.vim.org/pub/vim/doc/book/vimbook-OPL.pdf) <br />
5. [vundle教程](https://github.com/VundleVim/Vundle.vim)<br />
7. [tern安装教程](http://ternjs.net/doc/manual.html#server)<br />
8. [CtrlP-plugin](http://kien.github.io/ctrlp.vim/#installation)
9. [Emmet使用教程](http://www.hangge.com/blog/cache/detail_1537.html)
10. [how to add vim NERDTree plugin](https://github.com/johnbellone/vim) <br />
12. [pymode-plugin](https://github.com/python-mode/python-mode) <br />
13. [powerline-plugin](https://github.com/powerline/powerline) <br />
14. [vimtex-plugin](https://github.com/lervag/vimtex) <br />
15. [vim recording mode](https://stackoverflow.com/questions/1527784/what-is-vim-recording-and-how-can-it-be-disabled) <br />
16. [vim register](https://stackoverflow.com/questions/1497958/how-do-i-use-vim-registers) <br />
17. [vim format](https://thoughtbot.com/blog/wrap-existing-text-at-80-characters-in-vim)
18. [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
19. [YouCompleteMe Trouble Shooting](https://github.com/ycm-core/YouCompleteMe/wiki/Troubleshooting-steps-for-ycmd-server-SHUT-DOWN)

