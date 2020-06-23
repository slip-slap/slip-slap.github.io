--- 
layout: post 
title: "CMake: Compiler Setting" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### Method
1. Generator can specify the compiler, some generators are tied to a specific
   compiler.
2. Set  environment variable
3. cache entry

CMake will try a list of usual compilers until it finds a working compiler, the
list can be found in the files

```shell
/usr/local/Cellar/cmake/3.17.3/share/cmake/Modules
CMakeCXXCompiler.cmake.in
CMakeCXXCompilerABI.cpp
CMakeCXXCompilerId.cpp.in
CMakeCXXInformation.cmake
CMakeDetermineCXXCompiler.cmake
```




#### Using Command Line

```cpp
cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang
```

#### Setting in CMakeLists.txt

```lcmake
set(CMAKE_CXX_STANDARD 11)
```






