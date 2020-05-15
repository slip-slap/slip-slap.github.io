---
layout: post
title: ""
keywords: []
description: ""
category: "CS"
tags: ["OS"]
---
{% include JB/setup %}

####
1. An Operating System(OS) is a program that manages the computer hardware
2. It also provides a basis for Apllication Programs and acts as an intermediary
   between computer user and hardware.


####
1. Bootstrap Program: The initial program that runs when a computer is powered
   up or rebooted.
- it is stored in the ROM
- it must know how to load the OS and start executing that system
- it must locate and load into memory the OS kernel

2. Interrupt: 
- The occurence of an event is usually signalled by an Interrupt from hardware
  of software
- Hardware may trigger an interrupt at any time by sending a signal to the CPU,
  usually by the way of the sytem bus.

3. System Call(Monitor call): Software may trigger an interrupt by executing a
   special operation called System call.
