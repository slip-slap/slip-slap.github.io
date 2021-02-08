---
layout: post
title: "Git: Internals"
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}


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
