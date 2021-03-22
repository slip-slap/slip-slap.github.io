--- 
layout: post 
title: "CMake: Modules" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake", "script"] 
--- 
{% include JB/setup %}


[官方文档](https://cmake.org/cmake/help/v3.0/module/FindPkgConfig.html)看完直接想吐。  
上代码  
```
find_package(PkgConfig REQUIRED)
#pkg_check_modules(FOO,OPENCV) 这是错误写法，中间没有逗号，而且有空格
pkg_check_modules(FOO OPENCV)
include_directories(${FOO_INCLUDE_DIRS})
target_link_libraries(untitled ${FOO_LIBRARIES})
```


#### What is module?
The shortest answer is code reuse.
- cmake is programming language.
- code reuse just a common technique for programming.


#### 1. Find module
1. A module's location can be specified using the full path to the module file
2. cmake would look for modules in the directories specified by the CMAKE\_MODULE\_PATH
3. if it can't find it there, it will look in the module subdirectory in the cmake.


##### 1.1 module mode
1. if you go to the cmake installation folder, under the module subfolder, you
   can find a list of file ended with cmake extension
- in this module, such as googletest, pkgconfig will define some new command in cmake
- That's why you see qt commands, because there are qt cmake.


<img src="{{IMAGE_PATH}}/pl-script-cmake-module-mode.png" height="200" width="300" />


##### 1.2 config mode
\<package\>Config.cmake file located outside and produced by intall command of other project, 
the following case:

```cmake
cmake_minimum_required(VERSION 2.8)
project(Foo)

add_library(foo, foo.h foo.cpp)
install(FILES foo.h DESTINATION include)
install(TARGETS foo DESTINATION lib)
install(FILES FooConfig.cmake DESTINATION lib/cmake/Foo)
```

The FooConfig.cmake

```cmake
add_library(foo STATIC IMPORTED)
find_library(FOO_LIBRARY_PATH foo HINTS "${CMAKE_CURRENT_LIST_DIR}/../../")
set_target_properties(foo PROPERTIES IMPORTED_LOCATION "${FOO_LIBRARY_PATH}")
```






#### 2. What is pkgconfig
pkg-config program is used to retrieve information about installed libaries in the system. 
It is typically used to compile and link against one or more libraries.

- if you go to /usr/local/lib folder, many file with an extension end with .pc,
  it stores the header file position and linked libraries position.
- CMake use this pkgconfig program to find the header file and library file.

```cpp
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
```


#### Define a cmake module
1. If you go to cmake installation location, you will find a file named FindPkgConfig.cmake
- in this folder, it defines two new commands
- pkg\_check\_modules and pkg\_search\_module


```cmake
#[========================================[.rst:
FindPkgConfig
-------------

A ``pkg-config`` module for CMake.

Finds the ``pkg-config`` executable and adds the :command:`pkg_get_variable`,
:command:`pkg_check_modules` and :command:`pkg_search_module` commands. The
following variables will also be set:

``PKG_CONFIG_FOUND``
  if pkg-config executable was found
``PKG_CONFIG_EXECUTABLE``
  pathname of the pkg-config program
``PKG_CONFIG_VERSION_STRING``
  version of pkg-config (since CMake 2.8.8)

#]========================================]
```


##### Example
1. root CMakeLists.txt file

```cmake
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake_modules/")
find_package(foo REQUIRED)
```

2. FindFoo.cmake file in cmak\_modules
```cmake
# the `pkg_check_modules` function is created with this call
find_package(PkgConfig REQUIRED)
message("pkgconfig found: " ${PKG_CONFIG_FOUND})
message("pkgconfig version: " ${PKG_CONFIG_VERSION_STRING})
pkg_check_modules(Opencv4 REQUIRED Opencv4)
```




#### Reference
1. [pkgconfig](https://askubuntu.com/questions/210210/pkg-config-path-environment-variable)
2. [pkgconfig and cmake](https://stackoverflow.com/questions/29191855/what-is-the-proper-way-to-use-pkg-config-from-cmake)
3. [config mode and module mode](https://stackoverflow.com/questions/20746936/what-use-is-find-package-if-you-need-to-specify-cmake-module-path-anyway)
