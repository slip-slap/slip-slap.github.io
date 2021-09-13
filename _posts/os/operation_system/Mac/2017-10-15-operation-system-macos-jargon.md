---
layout: post
title: "MacOS: Jargon"
keywords: []
description: 
category: "CS"
tags: []
---
{% include JB/setup %}


#### terminology

1. Real: This is the real memory usage for an application as reported by
   task\_info() - a rough count of the number of physical pages that the current
   process has.

2. Virtual: The total amount of address space in the process that's mapped to
   anything, whether that's an arbitrarily large space for variables or
   anything.

3. Wired: This refers to kernel code and such. Memory that should not ever be
   moved out of the RAM.

4. Private: this is memory that a process is using solely on its own that is
   used in resident memory


#### Reference
1. [real, virtual, wired](https://apple.stackexchange.com/questions/104/whats-the-difference-between-real-virtual-shared-and-private-memory)


