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



#### 1.6 git diff
The git status is too vague for you, you want to know exactly what you changed,
not just which files were changed. you can use git diff.
- git diff shows you the exact lines added and removed-the patch


### 2. Undoing Things

#### 2.1 Undoing of a commit
One of the common undos takes place when you commit too early and possibly
forget to add some files, or you mess up your commit message. If you want to
redo that commit, make the additional changes you forgot, stage them, and commit
again using the --amend option
- When you're amending your last commit, you're not so much fixing it as
  replacing it entirely with a new, improved commit that pushes the old commit
  out of the way and puts the new commit in its place.
- Effectivelly, it's as if the previous commit never happened, and it won't show
  up in your repository history.

```shell
git commit -m 'Initial commit'
git add forgotten_file
git commit --amend
```

#### 2.2 Unstaging a staged file





```shell
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


#### Reference
1. [How to read the outputs of git diff](https://stackoverflow.com/questions/2529441/how-to-read-the-output-from-git-diff)
