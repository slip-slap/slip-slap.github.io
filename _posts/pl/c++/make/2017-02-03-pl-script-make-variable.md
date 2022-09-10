--- 
layout: post 
title: "Make: Variable" 
keywords: [] 
description: 
category: "PL"
tags: ["script","make"] 
--- 
{% include JB/setup %}

#### H
1. By default, Makefile targets are "file targets". they are used to build files
   from other files. Make assumes its target is a file, and this makes writing
   Makefiles relatively easy.
2. sometimes you want your Makefile to run commands that do not represent
   physical files in the file system. Good examples for this are the common
   targets "clean" and "all". Chances are this isn't the case, but you may
   potentially hava a fine named **clean** in you main directory, in such a case
   Make will be confused because by default the **clean** target would be
   associated with this file and Make will only runit when the file doesn't
   appear to be up-to-date with regards its dependencies
3. These special targets are called **phony** and you can explicitly tell Make
   they're not associated with files.
- In terms of Make, a phony target is simply, a target that is always
  out-of-date. it will run, independent from the state of the file system. 




#### Reference
1. [.PHONY](https://stackoverflow.com/questions/2145590/what-is-the-purpose-of-phony-in-a-makefile)
