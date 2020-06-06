--- 
layout: post 
title: "C++ Library: Googletest" 
keywords: [] 
description: 
category: "PL"
tags: ["compile","c++"] 
--- 
{% include JB/setup %}

#### CMake configuration

```cmake
cmake_minimum_required(VERSION 3.10)

project(hello_world)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)

#GTest
ADD_SUBDIRECTORY(googletest)
enable_testing()
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

add_executable(app main.cpp )
target_link_libraries(app gtest gtest_main)
add_test(app app)
```



#### reference
1. [googletest](https://github.com/google/googletest)
