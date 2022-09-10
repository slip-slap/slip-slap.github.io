---
layout: post
title: "Git: Branch"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

#### Operations
1. git branch -m \<oldname\> \<newname\>
2. git branch -d \<branchname\>


#### Remote Branch
1. list remote branches
```shell
git branch -r
```
2. check them out as local branches
```shell
git checkout -b LocalName origin/remotebranchname
```

3. delete remote branch

```shell
git push origin --delete remote-branch-name
```





#### Reference
1. [git branch](https://stackoverflow.com/questions/6591213/how-do-i-rename-a-local-git-branch)
2. [git branch](https://www.educative.io/answers/how-to-delete-remote-branches-in-git)
