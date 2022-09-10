---
layout: post
title: "Shell: Zsh"
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"]
---

{% include JB/setup %}

#### plugin 

##### 1. autojump
1. install
```shell
git clone git://github.com/wting/autojump.git
cd autojump
./install.py or ./uninstall.py
```
2. usage
- jump to a directory contains foo
```shell
j tomcat
```
- jump to a child directory
```shell
jc post
```

#### 2. zsh-autosuggestions 

该命令是基于历史命令数据进行分析的，随着输入的命令越来越多，提示会越来越准确
```shell
ctrl+f 表示采纳
```

#### 3. zsh-syntax-highlighting
```shell
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
# 修改配置文件～/.zshrc
plugins=(git) 修改为plugins=(git zsh-syntax-highlighting)
```
#### reference 

1. [zsh之github](https://github.com/robbyrussell/oh-my-zsh)
2. [autojump](https://github.com/wting/autojump)
