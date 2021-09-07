---
layout: post
title: "Compiler: with processor"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### the relationship between them?
The answer to this question depends on how far from considerations we are
willing to get.

1. Ultimately, in theory, everything in C and C++ depends on the compiler and
   only on the compiler. Hardware/OS is of no importance at all.
- The compiler is free to implement a hardware abstraction layer of any
  thickness and emulate absolutely anything.
- There's nothing to prevent a C or C++ implementation from implementing the int
  type of any size and with any representation, as long as it is large enough to
  meet the minimum requirements specified in the language standard.
- Practial examples of such level of abstraction are readily available, e.g.
  programming languages based on "virtual machine" platform, like Java.

2. However, C and C++ are intended to be highly efficient languages. In order to
   achieve maximum efficiency a C or C++ implementation has to take into account
   considerations derived from the underlying hardware. For that reason it makes
   a lot of sense to make sure that each basic type is based on some
   representation directly supported by the hardware. In that sense, the size of
   basic types do depend on the hardware.


#### size of int? 2 bytes or 4 bytes?


#### Reference
1. [compiler and processor](https://stackoverflow.com/questions/2331751/does-the-size-of-an-int-depend-on-the-compiler-and-or-processor#:~:text=Yes%2C%20it%20depends%20on%20both,have%204%20bytes%20for%20int%20.)
2. [size of
   int](https://stackoverflow.com/questions/11438794/is-the-size-of-c-int-2-bytes-or-4-bytes)

