---
layout: post
title: "OS: Threads"
keywords: []
description: ""
category: "OS"
tags: []
---
{% include JB/setup %}

#### Definition
1. A thread is a basic unit of CPU utilization. It shares with other threads
   belonging to the same process its code section, data section, and other
   operating system resources, such as open files and signals.
- A thread ID
- A program counter
- A register set
- A stack



#### Benefits
1. Utilization of multiprocessor: the benefits of multithreading can be greatly
   increased in a multiprocessor architecture, where the thread maybe running in
   parallel on different processors. A single-threaded process can only run on
   one CPU, no matter how many are available. Multithreading on a multi-CPU
   machine increases concurrency.
