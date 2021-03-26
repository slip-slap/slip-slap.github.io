--- 
layout: post 
title: "CMake: Modern CMake" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### 1 What's the difference?
1. the old cmake command is directory oriented.
2. the modern cmake is target oriented.
- Modern cmake = targets + properties
- Setting properties: include directories, preprocessor, compilation and linking flags
- Using(linking with) libraries behaves like inheritance



##### 1.1  Commands comparsion
1. include\_directories(\<include\_path\>)   
-   target\_include\_directories(\<target\> \[VISIBILITY\] \<include\_path\>)

2. add\_definitions(\<preprocessor\_flags\>) 
- \_compile\_definitions (\<target\> \[VISIBILITY\] \<preprocessor\_flags\>)

3. set(CMAKE\_CXX\_FLAGS \<compilation\_flags\>) 
- target\_compiler\_options (\<target\> \[VISIBILITY\] \<compilation\_flags\>)

4. set(CMAKE\_LINKER\_FLAGS \<linker\_flags\>) 
- target\_linker\_options (\<target\> \[VISIBILITY\] \<linker\_flags\>)

#### 2 Targets and Properties
Modern CMake is all about targets and properties.
- An executable is a target, A library is a target
- Targets have properties. Properties of a target are the source files it's
  build from, the compiler options it requires, the libraries it links against.

#### 2.1 Properties
Target properties are defined in one of two scopes: INTERFACE and PRIVATE.
- Private properties are used internally to build the target
- Interface properties are used externall by users of the target
- The word **build** here is very vividly, 



#### Example
1. The following grammar complete treat the target JSONUtils as a class, with
   PUBLIC, PRIVATE qualifiers.

```cmake
target_include_directories(JSONUtils
	PUBLIC
		$<INSTALL_INTERFACE:include>
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>$
	PRIVATE
		${CMAKE_CURRENT_SOURCE_DIR}/src
)

	
```



#### Reference
1. [Simple modern cmake](https://levelup.gitconnected.com/simple-modern-cmake-tutorial-b0c1c362cd2c)
2. [It's time to do cmake right](https://pabloariasal.github.io/2018/02/19/its-time-to-do-cmake-right/)
3. [Modern cmake is like inheritance](https://kubasejdak.com/modern-cmake-is-like-inheritance)

