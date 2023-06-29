---
layout: post
title: "Git: The Three Trees"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}


#### Model
Git is all about the three trees: working directory, index, and HEAD, and all
the operations is for them.

1. Working directory: The other trees store their content in an efficient but
   inconvient manner, inside the *.git* folder.

- The working directory unpacks them into actual files, which makes it much
  easizer for you to edit them. Think of the working directory as a *sandbox*,
  where you can try changes out before commiting them to you staging area.

2. Index:  The *index* is your proposed next commit. We've also been referring to this
  concept as Git's "Staging Area" as this is what Git looks at when you run git
  commit.
- An index is a list of names and pointers to content. In books, it's page
  numbers. In the Git index, it's object ID's in the repository's object
  database.

3. HEAD


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








#### 1.6 git diff
The git status is too vague for you, you want to know exactly what you changed,
not just which files were changed. you can use git diff.
- git diff shows you the exact lines added and removed-the patch



#### Reference
1. [How to read the outputs of git diff](https://stackoverflow.com/questions/2529441/how-to-read-the-output-from-git-diff)
2. [git index and staged area](https://stackoverflow.com/questions/12138207/is-the-git-staging-area-just-an-index)
