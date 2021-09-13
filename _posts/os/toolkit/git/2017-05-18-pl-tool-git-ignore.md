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


