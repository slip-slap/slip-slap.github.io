--- 
layout: post 
title: "Compiler: gcc" 
keywords: [] 
description: 
category: "CS"
tags: ["compiler"] 
--- 
{% include JB/setup %}

#### 1. Build, host, and target
1. --target only make sense when building a compiler(e.g.: gcc)


#### 2. --prefix option
1. When you install software with **make install** or **sudo make install**. different files are placed
on different directories.
- Executables that provide commands the user is intend to run usually go in a **bin** directory.
- Library usually go in a **lib** directory
- Manual pages usually go in a **man** directory, and so forth

2. When you run **./configure**, the **--prefix** options let you specify where those directories
   are.
- It is called **--prefix** because it lets you give the prefix that appears in the paths to each of
  the directories where files from the program or library that you are building are to be installed.
- ommitting and just running **./configure** is typically equivallent to **./configure
  --prefix=/usr/local**


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



#### Reference
1. [build, host, and target](https://stackoverflow.com/questions/5139403/whats-the-difference-of-configure-option-build-host-and-target)
2. [Cross
   Compiler](https://en.wikipedia.org/wiki/Cross_compiler#:~:text=A%20cross%20compiler%20is%20a,smartphone%20is%20a%20cross%20compiler.)
3. [--prefix](https://askubuntu.com/questions/891835/what-does-prefix-do-exactly-when-used-in-configure)
