---
layout: post
title: "Editor: Vimscript Plugin"
keywords: []
description: 
category: "PL"
tags: ["editor","script"]
---
{% include JB/setup %}


### 1. Plugin
1. For every plugin, you can refer to the instruction about how to use them.
2. and in the vimrc file to setting.

#### 1.1 vundle-plugin
1. BundleList 查看已经安装的插件

#### 1.2 YouCompleteMe-plugin
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
#### 1.4 CtrlP-plugin
1. Configuration
```shell
set runtimepath^=~/.vim/bundle/ctrlp.vim
```
<hr />

#### 1.5 powerline-plugin
#### 1.6 vimtex-plugin
#### 1.7 surround vim


3. [how to add vim NERDTree plugin](https://github.com/johnbellone/vim) 
4. [powerline-plugin](https://github.com/powerline/powerline) 
5. [vimtex-plugin](https://github.com/lervag/vimtex) 
6. [vim surround](https://github.com/tpope/vim-surround)
