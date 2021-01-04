---
layout: post
title: "Git: Basic Operation"
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}

#### 1. Create a repository

##### 1.1 git init
##### 1.2 git clone
This command is git clone and not "checkout". This is an important
distinction-instead of getting just a working copy, Git receives a full copy of
nearly all data that the server has.
- Every version of every file for the history of the project is pulled down by
  default when you run git clone




#### 1.3 Lifecycle of the status of your files
checking the status of your files
```shell
git status
```

<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-file-lifecycle.png" /> <br />

#### 1.4 tracking new files

```shell
git add new-file
```

#### 1.5 Ignoring Files
Often, you'll have a class of files that you don't want Git to automatically add
or even show you as being untracked.

```shell
cat .gitignore
*.[oa]
*~
```
- the first line tells Git to ignore any files ending in ".o" or ".a"
- the second line tells git to ignore all files whose names end with a tilde(~)




```shell
diff
nots
restore
reset
rm
mv
```

#### Detached Head
1. Detached head means you are no longer on a branch, you have checked out a
   single commit in the history
- why we have this, what's the advantage?
- If you want to delete you changes associated with the detached Head, **you
  only need to checkout the branch you were on**
  


<br />  <br />
<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-detach-head-before-switch.png" /> <br />
<br /> <br /> <br /> <br />

```shell
git switch liam
```

<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-detach-head-after-switch.png" /> <br />
<br /> <br /> <br /> <br />

