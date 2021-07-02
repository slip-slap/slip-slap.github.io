---
layout: post
title: "Git:  Rewriting commit"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}


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

#### Example
you realize you forget modify a file after you make a commit.  suppose the
message associated with this commit is "fix reading bug".

<img align="left" src="{{IMAGE_PATH}}/git_amend.png" /> 


#### Git reset

The first thing *reset* do is move what *HEAD* points to.

- Compared with *git checkout*, *git reset* does a smaller-grained operation
  among the three trees, i.e., working directory, index, and HEAD.
