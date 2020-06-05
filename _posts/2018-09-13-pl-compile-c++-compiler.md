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




### 2 GNU
#### Environment Variables
1. PATH: For searching the executables and run-time shared libraries.
2. CPATH: For searching the include-paths for headers. It is searched after
   paths specified in **-I<dir>** options.
3. LiBRARY_PATH: For searching library-paths for link libraries. It is searched
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

