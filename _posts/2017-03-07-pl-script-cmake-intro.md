--- 
layout: post 
title: "Cmake: Introduction" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### Organization
1. CMake input files are written in the "CMake Language" in source files named
   **CMakeLists.txt** or ending in a **.cmake** file name extension. CMake
   Language source files in a project are organized into:
- Directories
- Scripts
- Modules



 

#### CMake
1. You must treat Cmake as a programming language with **special syntax**, how
   to treat cmake as a programming language, things you need keep in mind
- treat every statement with parenthesis as a function, figure out the function
  mean and related parameters
- it's a special language, because it has predefined variable, you need pay
  attention.
2. Compared with maven, all the required library is in local, it doesn't have
   default catagory structure.
3. Both of them need configuration file, maven need "pom.xml", cmake needs
   "CMakeLists.txt"




#### Reference
1. [document](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
2. [Cmake Variable](https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/Useful-Variables)
