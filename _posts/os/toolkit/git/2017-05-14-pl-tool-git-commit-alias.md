---
layout: post
title: "Git:  alias of commit"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

**Terminology: detached head**:
If you check the commit log, you will find something called "HEAD".
- This *HEAD* is a pointer which points to a commit.
- You can change any commit it points to in the history, but you can't
  make a commit if this commit does at the end of a branch, and we refer to this
  *HEAD* pointer as *detached head*.
- It should attaches to a branch, not a random commit.


#### Detached Head
1. Detached head means you are no longer on a branch, you have checked out a
   single commit in the history
- why we have this, what's the advantage?
- If you want to delete you changes associated with the detached Head, **you
  only need to checkout the branch you were on**
  


<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-detach-head-before-switch.png" /> <br />

```shell
git switch liam
```

<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-detach-head-after-switch.png" /> <br />



#### 1. branch

can only be run after the merge has resulted in conflicts.
git merge --continue

##### 1.1 Operation 
+ git branch                 display branch
+ git branch develop         create branch









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




