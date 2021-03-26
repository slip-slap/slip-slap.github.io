--- 
layout: post 
title: "CMake: Difference" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}

#### 1. include\_directories and target\_include\_directories
1. include\_directories(x/y): affects directory scope. All targets in this
   CMakeList, as well as those in all subdirectores add after the point of its
   call, will have the path x/y added to their include path.

2. target\_include\_directories(target\_name x/y): adds x/y to the include path for target. 

- You want the former one if all of your targets use the include directories in question. You want the 
latter one if the path is specific to a target.
- if you want finer control of the path's visibility. The latter comes from the
  fact that target\_include\_directores() support the PRIVATE, PUBLIC, and INTERFACE qualifiers.



#### Reference
1. [include directories and target include directories](https://stackoverflow.com/questions/31969547/what-is-the-difference-between-include-directories-and-target-include-directorie)
