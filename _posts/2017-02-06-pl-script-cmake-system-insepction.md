--- 
layout: post 
title: "CMake: System Inspection" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### A

```shell
# find_library
# find_path
# find_program
# find_package
```





#### find\_package

1. find\_package is supposed to work with Find\<package\>.cmake module
2. The purpose of the file is to define the search rules for the package and set
   different variables, such as \<package\>\_FOUND, \<package\>\_INCLUDE_DIRS
   and \<package\>\_LIBRARIES.

#### Default
1. After you install boost, it will generate boost-related file under 
**/usr/local/lib/cmake/Boost-1.72.0**
2. When you write the following code in **CMakeLists.txt**, it will go to find
   related cmake file, for example **BoostConfig.cmake** or  **BoostConfigVersion.cmake**

```cmake
find_package(Boost 1.72.0 COMPONENTS locale)
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

