---
layout: post
title: "Compiler: Garbage Collection"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Definition
Garbage: Data that cannot be referenced is generally known as garbage
- Many high-level programming languages remove the burden of manual memory management from the
  programmer by offering automatic garbage collection, which deallocates unreachable data.


#### Solution: reference counting
reference counting: a simple, but imperfect, method of automatic garbage collection, which is based
on the idea that once a program has lost all references to an object, it simply cannot and so will
not reference the storage.

