--- 
layout: post 
title: "CMake: language" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}

#### 1. What is cmake?
CMake is a string-oriented language.
CMake is a string-oriented language.
CMake is a string-oriented language.
-  After you understand this, everything will be very clear.

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

#### With Make
1. Make is designed to debug c language, but it's not easy to use.
2. So cmake comes out, the code you write in CMakeLists.txt would be translated
   to Makefile.
3. for example **add\_executable(Tutorial tutorial.cxx)** in CMakeLists,
   actually will be translated into corresponding make language, such as
   compile, link etc.

#### Galois
1. At first, I think cmake is easy, I don't take it as a programming language.
2. Second, I take cmake too complicate.
3. Finaly, cmake is just a programming language, it follows most programming language patterns.
- you define a variable in another cmake script, you load it, then you can use this veriable.
- you define a function, also know as, a command, you load it, then you can call it.


#### Reference
1. [cmake language](https://cmake.org/cmake/help/latest/manual/cmake-language.7.html)
1. [document](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
2. [Cmake Variable](https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/Useful-Variables)
3. [cmake commands summary](https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html#scripting-commands)

