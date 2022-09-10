---
layout: post
title: "C++ STL: Iterator Adapters"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

Iterators are objects that can iterate over elements of a sequence via a common
interface that is adapted from ordinary pointers.

#### Iterator Adapters
Iterators are pure abstractions: anything that behaves like an iterator is an
iterator. For this reason, you can write classes that have the interface of
iterators but do something completely different. 

1. Insert iterators: they are used to let algorithm operate in insert mode
   rather than in overwrite mode. In particular, inserters solve the problem of
   algorithms that write to a destiation that does not have enough romm: they
   let the destination grow accordingly.



