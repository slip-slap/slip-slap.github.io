--- 
layout: post 
title: "Assembly: Interrupts, Traps, and Exceptions" 
keywords: [] 
description: 
category: "CS"
tags: ["assembly"] 
--- 
{% include JB/setup %}

#### History
On the 80x86, there are three types of events commonly known as interrupts: traps, exceptions, and
interrupts(hardware interrupts)

1. Although the term trap and exception are often used synonymously, we will use the term trap to
   denote a programmer initiated and expected transfer of control to a special handler routine.  In
   many respects, a trap is nothing more than a specialized subroutine call.
- Many texts refer to traps as software interrupts. The 80x86 int instruction is the main vehicle
  for executing a trap. Note that traps are usually unconditional;
- that is, when you execute an int instruction, control always transfers to the procedure associated
  with the trap.
- since traps execute via an explicit instruction, it is easy to determine exactly which
  instructions in a program will invoke a trap handling routine.


2. An exception is an automatically generated trap that occurs in response to some exceptional
   condition. Generally, there isn't a specific instruction associated with an exception, instead,
   an exception occurs in response to some degenerate behavior of normal 80x86 program execution.
- a division instruction with a zero divisor,  a memory protection fault.
- Whenever such a condition occurs, the CPU immediately suspends execution of the current
  instruction and transfers control to exception handler routine. 
- the routine can decide how to handle the exceptional condition; it can attempt to rectify the
  problem or abort the program and pring an appropriate error message.


3. Hardware interrupts, the third category that we will refer to simply as interrupts, are program
   control interruption based on an external hadware event(external to the CPU).
- Such as pressing a key on the keyboard


