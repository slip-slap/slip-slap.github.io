---
layout: post
title: "Git:  Philosophy Behind the Scene"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

#### 1. What is version control? 
1. Records changes to a file or set of files over time
2. Revert selected files back to a previous state, revert the entire projected
   back to a previous state.

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


#### 3. Layout

<img align="left" src="{{IMAGE_PATH}}/os-software-git-philosophy-layout.png" /> <br />


- I was confused by the term "checkout" for a long time, what does checkout 
  exactly do is bringing files stored in Repository to working directory.
- The working tree is a single checkout of one version of the project, these
  files are pulled out of the compressed database in the Git directory and
  placed on disk for you to use or modify.
- The staging area is a file, generally contained in your Git directory, that
  stores information about what will go into your next commit.

- The git directory is where Git stores the metadata and object database for
  your project. This is the most important part of Git, and it is what is copied
  when you clone a repository from another computer.


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

* git diff 查看工作区和版本库的差别
* git reflog 记录你的每一次命令

