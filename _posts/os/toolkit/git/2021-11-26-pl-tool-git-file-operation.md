---
layout: post
title: "Git: File Operation"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

#### Inspiration
File need to be moved from one folder to another folder. There are a couple of
cases:
1) from working directory to index.
2) from another branch to working directory.




1. git checkout: move files to working directory from a history commit.



####  git restore
Restore working tree files.
The command can also be used to restore the content in the index with --staged,
or restore both the working tree and the index with --staged --worktree.




