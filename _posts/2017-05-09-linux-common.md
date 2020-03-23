---
layout: post
title: "Linux: Common Command Line"
keywords: []
description: "linux"
category: "linux"
tags: []
---
{% include JB/setup %}


#### alias
If you want to create permanent aliases, just modify corresponding configuration file. <br />
1. for **Bash Shell** modify ~/.bashrc
2. for **Zsh Shell**  modify ~/.zshrc

```shell
alias ls="ls --auto=color" 
```


#### cp 

将源文件复制到目标文件，或将多个源文件复制到目标文件
<hr />

#### 语法

<hr />
cp [参数] source dest
<hr />
#### 参数

1. -i, --interactive  覆盖前是否询问
2. -r, --recursive    复制目录和目录内的所有内容
<hr />

### rm

删除

<hr />
#### 参数
1. -f, --force        强制删除文件，没有提示
2. -i, --interactive  交互式删除
3. -r,-R, --recursive 递归删除
4. -v,--verbose       详细显示进行的步骤

<hr />

### mkdir

设置目录
#### 参数

1. -p 递归创建多级目录 mkdir ./a/b/c

<hr />

### linux文件权限

linux的文件权限分为可读，可写和可执行三种


#### 显示权限
r 表示读权限 w表示写权限 x表示执行权限 -表示没有权限

```shell
ls -l
-rwx-xrr-x 1 root root 6444 09-22 15:46 test
```


#### 更改权限

1. 4 代表读权限 2代表写权限 1代表执行权限
<hr />

### nslookup

nslookup: name server lookup

