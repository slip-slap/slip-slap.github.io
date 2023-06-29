---
layout: post
title: "Git: Ignore"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

#### Incentive?
1. specifies intentionally untracked files to ignore.
- File are already tracked by Git are not affected.


#### Ignoring Files
Often, you'll have a class of files that you don't want Git to automatically add
or even show you as being untracked.

```shell
cat .gitignore
*.[oa]
*~
```
- the first line tells Git to ignore any files ending in ".o" or ".a"
- the second line tells git to ignore all files whose names end with a tilde(~)

#### Pattern
1. A blank line matches no files, so it can serve as a separator for readability.
2. A line starting with # serves as a comment.


#### Problem: Untracked a tracked file or folder

```cmake
git rm -r --cached <folder>
git rm --cached <file>
```



#### Reference
1. [git ignore](https://git-scm.com/docs/gitignore)
2. [forget tracked
   file](https://stackoverflow.com/questions/1274057/how-can-i-make-git-forget-about-a-file-that-was-tracked-but-is-now-in-gitign)
3. [slash problem](https://www.freecodecamp.org/news/gitignore-file-how-to-ignore-files-and-folders-in-git/)


