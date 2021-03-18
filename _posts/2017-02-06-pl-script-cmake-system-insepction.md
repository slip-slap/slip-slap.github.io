--- 
layout: post 
title: "CMake: System Inspection" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### Question: search path?
Before use this command, I get a couple of questions?
1. What is the search path?
- CMake provide default search path, one of them is **CMAKE_SYSTEM_PREFIX_PATH**.
- you can print this variable in the **CMakelists.txt**
- you can add another path into this **CMAKE_PREFIX_PATH**

```cpp
cmake -DCMAKE_PREFIX_PATH=/usr/local/Cellar/qt/6.0.2/lib/cmake/ ../
list(APPEND CMAKE_PREFIX_PATH "/tmp/test" "/another/library/path")
message("system prefix path: " ${CMAKE_SYSTEM_PREFIX_PATH})
/*
system prefix path: /opt/local/usr//usr/local/usr/X11R6/usr/pkg/opt/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/usr
*/
```


2. Does system environment variable evolved during this search?
3. If the answer is Yes, what are they?






#### A

```shell
# find_library
# find_path
# find_program
# find_package
```


#### find\_package
If a library installed to system with its **.cmake** configurations, cmake
would be able to look for system default library locations to find that library. 
- like /usr/lib; ;/usr/local/lib

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


#### Qt library
Qt has many components, if you wnat to know how to use one module in CMake.
- Step 1: go to its official website
- Step 2: search that module
- Step 3: you can find the usage at the page end.


<img src="{{IMAGE_PATH}}/pl-script-cmake-system-inspection-qt-cmake.png" height="" width="" />





#### Reference
1. [cmake find package](https://medium.com/@onur.dundar1/cmake-tutorial-585dd180109b)
2. [cmake official](https://cmake.org/cmake/help/v3.20/command/find_package.html)
3. [append search path to CMAKE_PREFIX_PATH](https://stackoverflow.com/questions/25395880/cmake-set-default-search-path)
