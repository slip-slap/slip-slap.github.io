--- 
layout: post 
title: "CMake: Packages" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### find\_package

1. find\_package is supposed to work with Find\<package\>.cmake module
2. The purpose of the file is to define the search rules for the package and set
   different variables, such as \<package\>\_FOUND, \<package\>\_INCLUDE_DIRS
   and \<package\>\_LIBRARIES.


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

