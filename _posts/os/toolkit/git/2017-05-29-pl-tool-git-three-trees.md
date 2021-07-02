---
layout: post
title: "Git: The three trees"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}


#### Model
Git is all about the three trees: working directory, index, and HEAD, and all
the operations is for them.


<img align="left" src="{{IMAGE_PATH}}/git/git-three-trees.png" /> 


#### 1.3 git status
Comparing these trees, and show their difference.

#### 1.4 git add
Tracking new files, it essentially add this file to index tree.



##### 1.2 git clone
This command is git clone and not "checkout". This is an important
distinction-instead of getting just a working copy, Git receives a full copy of
nearly all data that the server has.
- Every version of every file for the history of the project is pulled down by
  default when you run git clone





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





#### Reference
1. [How to read the outputs of git diff](https://stackoverflow.com/questions/2529441/how-to-read-the-output-from-git-diff)
