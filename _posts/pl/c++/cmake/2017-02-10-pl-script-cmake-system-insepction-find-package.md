---
layout: post
title: "CMake: find\_package"
keywords: []
description: ""
category: "PL"
tags: ["cmake"]
---

#### How to Get the Library?
One of the natural question after the invokation of the *find\_package()* is
that how to identify the name of these library.
- This command would excute some CMake script, which define related variables
  for use of these library. You need to go to these scripts to identify these
	  variables. Of course, there are some patterns you can follow, but it's up
	  to the author.



#### Question 1: what does this find\_package command do?
This command tries to find the following two files:
1. OpenCVConfig.cmake,
2. opencv-config.cmake. 
Get the cmake find the header and library.

#### Question 2: Where are they? 
They reside under library folder. For example:
1. the boost library: the related cmake file lies in
   */usr/local/Cellar/boost/1.76.0/lib/cmake*
2. the opencv library: corresponding cmake files are in
   */usr/local/Cellar/opencv/4.5.2_4/lib/cmake*
3. the qt library: the relevant cmake files are put under 
   */usr/local/Cellar/qt/6.1.1/lib/cmake*


#### Question 3: How to use them?
Put those files in a location where *cmake* can find them. CMake constructs a
set of installation prefixes for the package. Generally speaking, it is from two aspect:

1. cmake-specific variables:
- CMAKE\_PREFIX\_PATH
2. the standard system envrionment variable:
- CMAKE\_SYSTEM\_PREFIX\_PATH
```shell
/opt/local/usr//usr/local/usr/X11R6/usr/pkg/opt/Applications/Xcode.app/Contents/Developer/Platfor│
ms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/usr
```



#### Example: use opencv library
1. install opencv library via *brew install opencv*
2. go to folder */usr/local/Cellar*, you will find the opencv library.
3. the related cmake file is in the *cmake* folder, and this *cmake* folder is
   under *opencv/lib/*.

To use this in CMake, we should get this be found. It's simple, put a soft link
of this cmake file in the search path of cmake, such as, */usr/local/*, which is
one of the search location of system-specific prefix.

```cmake
ln -s /usr/local/Cellar/opencv/4.5.2_4/lib/cmake/opencv4 opencv4
```







##### 2.Self-define
- CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.10)
project(hello_world)
set(CMAKE_MODULE_PATH "/Users/kismet/Documents/code/cmake_code/tutorial/CMake/Help/guide/tutorial/my_step/cmake/modules")
find_package(Opencv REQUIRED)
```

- FindOpencv.cmake

```cmake
message("this is find opencv")
```
1. find\_package is supposed to work with Find\<package\>.cmake module
2. The purpose of the file is to define the search rules for the package and set
   different variables, such as \<package\>\_FOUND, \<package\>\_INCLUDE_DIRS
   and \<package\>\_LIBRARIES.

#### Examples
1. opencv: you will find related cmake file under the opencv source code.

#### Reference
1. [official find package](https://cmake.org/cmake/help/latest/command/find_package.html)
2. [Conan find package](https://docs.conan.io/en/latest/reference/generators/cmake_find_package.html)


