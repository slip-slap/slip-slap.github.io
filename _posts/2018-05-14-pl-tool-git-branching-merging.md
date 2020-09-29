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
branch
checkout
switch
merge
mergetool
log
stash
tag
worktree
```


can only be run after the merge has resulted in conflicts.
git merge --continue


#### Operation 
+ git branch                 display branch
+ git branch develop         create branch
+ git checkout master        switch branch

#### Example: run into a merge conflict, quit merge

```shell
git reset --merge
```

#### Reference
1. [switch and checkout](https://bluecast.tech/blog/git-switch-branch/)



