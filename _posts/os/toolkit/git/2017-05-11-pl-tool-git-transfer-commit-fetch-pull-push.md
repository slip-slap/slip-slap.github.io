---
layout: post
title: "Git: transfer commit pull push fetch"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}



#### The output of git pull



<img align="left" src="{{IMAGE_PATH}}/git/git-transfer-commit-pull-output.png" /> 




#### Core
*git fetch* and *git merge* are all just operations related to commits.



**Git fetch** without arguments will update all the remote-tracking branches.
execute *git log* command after *git fetch*, the result is as follows:


<img align="left" src="{{IMAGE_PATH}}/git/git-fetch-command.png" /> 



**Git pull** without arguments will in addition merge the remote master branch
into the current branch.

In the default mode, **git pull** is shorthand for **get fetch** followed by
**git merge FETCH_HEAD **
(the commit history after  *git pull*, which equals to the combination of *git
fetch*  and *git merge FETCH_HEAD*.)


<img align="left" src="{{IMAGE_PATH}}/git/git-merge-command.png" /> 


1. git fetch: is the command that tells you local git to retrieve the latest
   meta-data info from the original(yet doesn't do any file transferring.) It's
   more like just checking to see if there are nay changes available.

2. git pull: on the other hand does that and brings those changes from the
   reomote repository.


#### 2.1 git merge
Instead of just moving the branch pointer forward, Git creates a new snapshot
that results from this three-way merge and automatically creates a new commit
that points to it. This is referred to as a merge commit.
- it is special it has more than one parent


1. merge specific files from another branch

```shell
git checkout sourch_branch <paths>
```

#### Galois
*git pull* is nothing but a fancy git fast forward merge, if it doesn't satisfy
requirement for fast forward merge, it fails.


#### Reference
1. [fetch and pull 1](https://stackoverflow.com/questions/292357/what-is-the-difference-between-git-pull-and-git-fetch)
2. [fetch and pull 2](https://www.freecodecamp.org/news/git-fetch-vs-pull/#:~:text=git%20fetch%20is%20the%20command,changes%20from%20the%20remote%20repository.) 
3. [output of git pull](https://stackoverflow.com/questions/3340051/what-does-the-output-of-git-pull-actually-mean#:~:text=It%20finds%20all%20the%20objects,git%20book%20for%20more%20information.)
