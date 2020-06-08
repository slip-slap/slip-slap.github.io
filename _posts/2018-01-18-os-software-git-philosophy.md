---
layout: post
title: "Git:  Philosophy Behind the Scene"
keywords: []
description: 
category: "OS"
tags: []
---
{% include JB/setup %}

#### 1. What is the problem ?
1. assume you are a coder,  and work on a project. Accasionaly you revise you
   code, some days later, you want get things back to where they were.
- one solution is every time you change your code, you make a copy, but as time
  goes on, this is a nightmare. Based on the timeline, we packed the code we get
  anywhere we want.
- the second solution is git, and git is an artifact.


#### 2. The Philosphy
1. if you check the code in your project carefully, your file can be divided
   into two classes, **folder and text**.
- In git, both the **folder and text** ,separately, are abstracted as **tree 
  and blob**, we call them objects in general.
2. we are not satisfied with the timeline, we use a more complicated structure
   which is called **graph** to track all the change, each point in a timeline
   is a snapshot of the project. We have a fancy terminology for snapshot, which
   is called **commits**
- how to connect these **graph**, and what's the direction of the two node ? The
  solution is pointer, and the direction is from descendant to ancestor.
3. what's the name of each node ? How to identify them ?
- It use hash function, but it's not readable, so we create a reference to them,
  you can it branch.

```python
type blob=array<byte>
type tree=map<string, tree|blob>>
type commits={
parents = array<commit>
author = string<>
message = string<>
snapshot = tree
}
```




#### 3. Example

1. git init: create .git file，
- you can found objects and refs folder, this is the main file where git can
  track all the changes

```shell
mkdir my_git
cd _my_git
git init
ls .git
```


2. git log: to check commit information

```shell
echo "hello world" > my.py
git add my.py
git commit -m "x" 
git log
```
<img align="left" src="{{IMAGE_PATH}}/os-software-git-philosophy-first-coomit.png" /> <br />
<br /> <br /> <br /> <br />


```shell
echo "dog" >> my.py
git add my.py
git commit -m "x" 
git log
```
<img align="left" src="{{IMAGE_PATH}}/os-software-git-philosophy-second-coomit.png" /> <br />
<br /> <br /> <br /> <br /> <br /> <br /> <br /> 
<br /> <br /> 


3. git checkout <hash-value>: jump to previous state

```shell
# check current file content
cat my.py
# hello world
# dog

# we get back to previous status, where hash value is
# ad62409737e3e7160fa66b8ae62723b8c1beee96
git checkout ad62409
# now cat the my.py again, the content is
# hello world
```





其实只能跟踪文件文件的改动，比如txt文件或者程序代码。
版本控制系统可以告诉你每次的改动。但对于图片，视频等二进制文件，版本控制系统是无能为力的。


git由三个概念，分别是工作区，版本库和暂存区，add命令把文件由工作区
添加到stage,即暂存区，commit命令把暂存区合并到版本库


* git status 时刻掌握仓库当前的状态
* git diff 查看工作区和版本库的差别
* git reflog 记录你的每一次命令


git支持多种协议，包括https, 但是通过ssh支持的原生git协议速度最快。
* 添加远程库：git remote add origin git@github.com:slip-slap/slip-slap.github.io.git
远程库的名字叫做origin，也可以改成别的，但是origin这个名字一看就知道是远程库
* 把本地库的所有内容推送到远程库上 git push origin master

