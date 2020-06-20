---
layout: post
title: "Debugger: Pause"
keywords: [] 
description: 
category: "PL"
tags: ["tool","script"]
---
{% include JB/setup %}

#### Place
GDB is very flexible about the meaning of "place"; 
-. it could mean things as varied as a line of source code
-. an address of code, a line number wihin a source file.


#### GDB
1. A breakpoint tells GDB to pause execution at a particular location within the
   program.
2. A watchpoint tells GDB to pause execution when a particular memory location
   changes value.
3. A catchpoint tells GDB to pause execution when a particular event occurs.

#### Keeping Track of Breakpoints

```shell
info breakpoints
delete 1
```

#### Set Breakpoints

1. break function

```shell
(gdb) break main
```

2. break line\_number

```shell
(gdb) break 35
```

3. break filename:function
```shell
(gdb) break bed.c:parse_arguments
```






