---
layout: post
title: "Git: Basic Operation"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}



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


<img align="left" src="{{IMAGE_PATH}}/os-software-git-philosophy-second-coomit.png" /> <br />
<br /> <br /> <br /> <br /> <br /> <br /> <br /> 


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

* git reflog 记录你的每一次命令

