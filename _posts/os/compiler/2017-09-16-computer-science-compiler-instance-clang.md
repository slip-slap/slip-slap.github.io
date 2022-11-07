--- 
layout: post 
title: "Compiler: clang" 
keywords: [] 
description: 
category: "PL"
tags: ["compiler","c++"] 
--- 
{% include JB/setup %}


### 1 LLVM Project clang
1. clang is the C compiler
2. Clang++ is the C++ compiler
- -std=<dialect>: option picks which dialect of a particular language you want
  to use. if you need to ensure that you program is portable to an old C++98
  compiler, you can compile it with -std=c++98


```shell
clang++ -std=c++11 my_class.cpp
clang++ $(pkg-config --cflags --libs /usr/local/Cellar/opencv/4.3.0_4/lib/pkgconfig/opencv4.pc) -std=c++14 smooth.cpp
```
#### Stage Selection Options
1. -E     Run the preprocessor stage.
2. -S
3. -c


#### Assemble Code Generation

```cpp
// default output test.s
clang++ -S -mllvm --x86-asm-syntax=intel test.cpp
```
#### Machine Code Generation without Linked

```cpp
clang++ -c test.cpp // default output test.o
```

#### RVO(Return Value Optimization)

```cpp
clang++ -std=c++11 -fno-elide-constructors main.cpp
```





#### Compilationg Process
<img src="{{IMAGE_PATH}}/gcc-compilation-process.png">



#### Galois
1. in the preprocess stage, each include command will replaced with its
   reference.
2. After compilation, we will get assemble language.
3. each assemle file will become an object file, which an assemble file is from
   a cpp file, which means a cpp files turn into an obj file.
- an object file is an executable file, which is binary file, but some of them
  may symbolic, in the linker stage, replace the symbolic with real executable
  code.
4. the linker link all the obj file togeter forming the executable file.
