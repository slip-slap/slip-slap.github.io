---
layout: post
title: "OS: Process Management"
keywords: []
description: ""
category: "OS"
tags: []
---
{% include JB/setup %}


#### Definition
1. Process: A process can be thought of as a program in execution
2. Thread: A thread is the unit of execution with a process. A process can have
   one thread to many threads.


#### Process State
1. New: The process is being created.
2. Running: Instructions are being executed.
3. Waiting: The process is waiting for some event to occur(such as an I/O
   completion or reception of a signal)
4. Ready: The process is waiting to be assigned to a processor.

#### Process Control Block
1. Process State
2. Process Number
3. Program Counter
4. Registers
5. Memory Limits
6. List of open files
7. I/O status information
8. Memory management information
9. Accounting Information
