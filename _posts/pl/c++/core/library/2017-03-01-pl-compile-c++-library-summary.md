---
layout: post
title: "C++:  Library"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### What is a library?
A command library is nothing but headers and libs.  At the same time, it needs
to provide information how to use this library.  jou want people to make use of
this library, you should provide a way. For CMake users, you should provide
cmake file; for pkg-config users, you should provide a .pc file. Here is what a
library folder look like.


<img src="{{IMAGE_PATH}}/pl/c++/library_structure.png" height="" width="" />




#### 1.  .a extension and .dylib extension
1. .a extension means a static library.
- Static libraries allow application to load code into its address space at compile time.
- This results in a larger size in disk and slower launch times.

2. .dylib extension means dynamic library
- Dynamic libraries allow an application to load code into its address space at runtime.

#### 2. What is package relocatablility 
1. package can be used across the filesystem without changes to itself or environment
2. A file needs to know where it is, and the relative path from that to what it needs.


#### Reference
1. [static library and dynamic library](https://stackoverflow.com/questions/40841670/what-is-the-difference-between-dylib-and-a-lib-in-ios)
2. [library relocatablility](https://indico.cern.ch/event/848215/contributions/3591953/attachments/1923018/3181752/HSFPackagingRelocation.pdf)
3. [library relocatablility github](https://github.com/drbenmorgan/Resourceful)
