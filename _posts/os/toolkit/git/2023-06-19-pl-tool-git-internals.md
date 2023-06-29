---
layout: post
title: "Git: Internals"
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}


#### Index



#### blob, tree, and commit

```python
type blob=array<byte>
type tree=map<string, tree|blob>>
type commits={
parents = array<commit>
author = string<>
message = string<>
snapshot = tree
}
```

#### Reference
1. [git内部原理](https://zhuanlan.zhihu.com/p/96631135)
2. [The index](https://stackoverflow.com/questions/4084921/what-does-the-git-index-contain-exactly)
