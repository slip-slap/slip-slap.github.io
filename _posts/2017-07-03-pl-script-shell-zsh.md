---
layout: post
title: "Shell: Zsh"
keywords: [] 
description: 
category: "PL"
tags: []
---

{% include JB/setup %}

#### 功能
chsh是一个linux命令，用来修改设定用户的shell

#### 语法
1. chsh -m 修改配置当前用户的shell

#### 插件

##### autojump
cd 过一次的目录，下次都可以直接跳转

```shell
cd /Users/huiyaozhang/Library/Caches/IntelliJIdea2017.1/tomcat/Unnamed_direckBank
j tomcat
```
<hr />

##### zsh-autosuggestions 

该命令是基于历史命令数据进行分析的，随着输入的命令越来越多，提示会越来越准确

```shell
# 觉得提示正确
ctrl+f 表示采纳
```
<hr />
##### zsh-syntax-highlighting

语法高亮

```shell
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
# 修改配置文件～/.zshrc
plugins=(git) 修改为plugins=(git zsh-syntax-highlighting)
```
#### 参考链接 

[zsh之github](https://github.com/robbyrussell/oh-my-zsh)
