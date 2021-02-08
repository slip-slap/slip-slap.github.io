---
layout: post
title: "Shell: File System"
keywords: []
description: 
category: "PL"
tags: ["shell","script"]
---
{% include JB/setup %}

#### output information of command ls
1. -rwx-xrr-x: permissions 
2. 1: number of linked hard-links
3. root: owner of the file
4. root: to which group this file belongs to
5. 6444: size
6. 09-22 15:46: modification/creation date and time
7. test: file directory name

```shell
-rwx-xrr-x 1 root root 6444 09-22 15:46 test
```
Permissions can be divided into four parts
1. **-**: specifies this is a regular file
- l: specfies symbolic links
- d: stands for directory
- c: stands for character file






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
1. -i, --interactive  覆盖前是否询问
2. -r, --recursive    复制目录和目录内的所有内容

### rm

删除

<hr />
#### 参数
1. -f, --force        强制删除文件，没有提示
2. -i, --interactive  交互式删除
3. -r,-R, --recursive 递归删除
4. -v,--verbose       详细显示进行的步骤





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

