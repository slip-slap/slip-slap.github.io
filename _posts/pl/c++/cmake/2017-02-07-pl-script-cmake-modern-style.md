--- 
layout: post 
title: "CMake: Modern Style" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### 1 What's the previous style?
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

##### 1.2 include\_directories and target\_include\_directories
1. include\_directories(x/y): affects directory scope. All targets in this
   CMakeList, as well as those in all subdirectores add after the point of its
   call, will have the path x/y added to their include path.

2. target\_include\_directories(target\_name x/y): adds x/y to the include path for target. 

- You want the former one if all of your targets use the include directories in question. You want the 
latter one if the path is specific to a target.
- if you want finer control of the path's visibility. The latter comes from the
  fact that target\_include\_directores() support the PRIVATE, PUBLIC, and INTERFACE qualifiers.





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
4. [Header only cmake](http://mariobadr.com/creating-a-header-only-library-with-cmake.html)
5. [include directories and target include directories](https://stackoverflow.com/questions/31969547/what-is-the-difference-between-include-directories-and-target-include-directorie)
6. [CMake tutorial](https://medium.com/@onur.dundar1/cmake-tutorial-585dd180109b)

