--- 
layout: post 
title: "CMake: System Inspection" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake"] 
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
