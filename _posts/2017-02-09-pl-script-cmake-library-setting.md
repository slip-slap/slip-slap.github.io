---
layout: post
title: "CMake: Library setting"
keywords: []
description: 
category: "PL"
tags: ["cmake","script"]
---


#### 1. Object-oriented Code
1. Create an object

```cmake
add_library(libA src/A.cpp)
```

2. member function: call member function to set object property
- act like Object-oriented programming paradigm to set the data(include path) to the object.
- Just like a normal Setter function.

```cmake
target_include_directories(libA 
	public 
		$<INSTALL_INTERFACE:include>
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
	)
```

#### 2. Global function
1. install(xxx) command is a global function in cmake programming language.
- xxx denotes different object, it may a FILES, CODE, TARGETS, SCRIPT, EXPORT.




#### Reference
1. [cmake install](https://cmake.org/cmake/help/latest/command/install.html)

