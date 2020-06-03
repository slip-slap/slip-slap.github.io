---
layout: post
title: "CLI: Common Command Line"
keywords: []
description: "linux"
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}


#### alias
If you want to create permanent aliases, just modify corresponding configuration file. <br />
1. for **Bash Shell** modify ~/.bashrc
2. for **Zsh Shell**  modify ~/.zshrc

```shell
alias ls="ls --auto=color" 
```
#### head 
1. 显示开头或结尾某个数量的文字区块
2. head [参数]  [文件]
3. -n 显示行数   ls | head -n 3

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

#### lsof
lsof被称为linux调试的瑞士军刀，一般只有root用户才能执行lsof命令

#### 常用命令
```shell
# 查看哪个进程在使用8080端口
sudo lsof -i :8080
# 根据PID杀掉进程
sudo kill -9 ${PID}
```
#### Wget
下载，支持断点下载，代理服务器下载
<hr />

#### 语法
1. -c 断点续传 当文件特别大或者特别慢的时候需要断点续传
```shell
wget -c http://the.url.of/target/file/url
```

