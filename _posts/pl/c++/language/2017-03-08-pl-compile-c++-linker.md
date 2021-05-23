--- 
layout: post 
title: "C++: Linker" 
keywords: [] 
description: 
category: "PL"
tags: ["compile","c++"] 
--- 
{% include JB/setup %}


#### 1. Definition
A linker is a computer program that takes one or more object files generated by
a compiler and combines them into one, executable program.

<img src="{{IMAGE_PATH}}/pl-compiler-c++-linker.png" width="300" height="200" />


1. Linking has nothing to do with C or C++ specifically: compilers just generate the object files.
   the linker then takes them as input without ever knowing what language compiled them. It might as
   well be Fortran.


#### 2. Error
```cpp
#include<iostream>
void my_tool();
int main()
{
	my_tool();
	std::cout<<"hello world!";
}


```



```
Undefined symbols for architecture x86_64:
  "my_tool()", referenced from:
      _main in work-3e80d8.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```


#### 3. Static library and dynamic library
1. static library means this file will go into your executable file.
2. Dynamic means link the library on the fly.
-  this is just the package in python, or java.
- Each C++ libary provides two files, the includes for compiler.
- The library for the linker.
- Why c++ doesn't  have a package manager, because developers don't buy this.


#### 4. The linker search path

1. In speak of searching path, the system environment variables comes into my mind.
- such as path.
2. The second option that comes into my mind is maybe not the linker related
environment variable.


```cpp
man ld
/* the output is:
ld maintains a list of directories to search for a library or framework to use.
The default library search path is /usr/lib then /usr/local/lib.  The -L option
will add a new library search path.  The default framework search path is
/Library/Frameworks then /System/Library/Frameworks.  (Note: previously,
/Network/Library/Frameworks was at the end of the default path.  If you need
that functionality, you need to explicitly add -F/Network/Library/Frameworks).
The -F option will add a new framework search path.  The -Z option will remove
the standard search paths.  The -syslibroot option will prepend a prefix to all
search paths
*/
```

Second method

```shell
ld -v 2
/* the output is: 
//@(#)PROGRAM:ld  PROJECT:ld64-450.3
BUILD 23:30:59 Feb  5 2020
configured to support archs: i386 x86_64 x86_64h armv6 armv7 armv7s armv7m armv7k arm64
Library search paths:
        /usr/lib
        /usr/local/lib
Framework search paths:
        /Library/Frameworks/
        /System/Library/Frameworks/
ld: file not found: 2
*/
```


