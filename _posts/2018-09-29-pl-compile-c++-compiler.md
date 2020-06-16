--- 
layout: post 
title: "C++: Compiler" 
keywords: [] 
description: 
category: "PL"
tags: ["compile","c++"] 
--- 
{% include JB/setup %}


### 1 Clang
1. clang is the C compiler
2. Clang++ is the C++ compiler
- -std=<dialect>: option picks which dialect of a particular language you want
  to use. if you need to ensure that you program is portable to an old C++98
  compiler, you can compile it with -std=c++98


```shell
clang++ -std=c++11 my_class.cpp
clang++ $(pkg-config --cflags --libs /usr/local/Cellar/opencv/4.3.0_4/lib/pkgconfig/opencv4.pc) -std=c++14 smooth.cpp

```




### 2 GNU
#### Environment Variables
1. PATH: For searching the executables and run-time shared libraries.
2. CPATH: For searching the include-paths for headers. It is searched after
   paths specified in **-I<dir>** options.
3. LiBRARY\_PATH: For searching library-paths for link libraries. It is searched
   afer paths spefified in **-L<dir>** options

#### option
1. -o: specify the output file name 

```shell
g++ -o foo hello.cpp
````
2. -c: compile only
3. -Wall: enables all compilers warning messages.
4. -O: set the compiler's optimization level

#### Dump include Paths from g++
```shell
g++ -E -x c++ - -v< /dev/null
```


#### g++ and gcc
g++ is equal to the following statement
- first is a compiler option.
- second two are linker option.

```cpp
gcc -xc++ -lstdc++ -shared-libgcc
```

#### Compilationg Process
<img src="{{IMAGE_PATH}}/gcc-compilation-process.png">

