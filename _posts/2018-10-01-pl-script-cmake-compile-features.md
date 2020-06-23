--- 
layout: post 
title: "CMake: Compile Features" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}

#### Using Command Line

```cpp
cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang
```


#### Setting in CMakeLists.txt

```lcmake
set(CMAKE_CXX_STANDARD 11)
```



