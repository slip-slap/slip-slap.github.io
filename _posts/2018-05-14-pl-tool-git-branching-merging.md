---
layout: post
title: "Git:  Branching and Merging"
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}


```shell
mergetool
log
stash
tag
```

#### 1. branch

can only be run after the merge has resulted in conflicts.
git merge --continue

##### 1.1 Operation 
+ git branch                 display branch
+ git branch develop         create branch

### 2. Merge

#### 2.1 git merge
Instead of just moving the branch pointer forward, Git creates a new snapshot
that results from this three-way merge and automatically creates a new commit
that points to it. This is referred to as a merge commit.
- it is special it has more than one parent


1. merge specific files from another branch

```shell
git checkout sourch_branch <paths>
```



#### 2.2 git  rebase
This operation works by going to the common ancestor of the two branches(the one
you're on and the one you're rebasing onto), getting the diff introduced by each
commit of the branch you're on
- saving those diffs to temporary files
- resetting the current branch to the same commit as the branch you are rebasing
  onto, and finally applying each change in turn.


<img align="left" src="{{IMAGE_PATH}}/os-software-git-basic-rebase.png" /> <br />

-  don't look the very explanation of it's documentation, look at what does it
   do
- it keeps the 2a615e commit, but throw the c07fbe commit away.
- you can simply just git rebase 2a615e
- this command create a new commit, it's parent is 2a615e commit



#### Example: run into a merge conflict, quit merge

```shell
git reset --merge
```

#### 3. remote branch
The safe ways to change remote-tracking branches are with git fetch or as a
side-effect of git-push; 
- You can't work on remote-tracking branches directly.
- In contrast, you can always switch to local branches and create new commits to
  move the tip of the branch forward.


#### Reference
1. [switch and checkout](https://bluecast.tech/blog/git-switch-branch/)
2. [fetch and merge](https://longair.net/blog/2009/04/16/git-fetch-and-merge/)
3. [Merge specific files from another branch](https://jasonrudolph.com/blog/2009/02/25/git-tip-how-to-merge-specific-files-from-another-branch/)




