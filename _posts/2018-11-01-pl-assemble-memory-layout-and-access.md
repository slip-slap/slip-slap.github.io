--- 
layout: post 
title: "Assembly: Memory Layout" 
keywords: [] 
description: 
category: "PL"
tags: ["assembly"] 
--- 
{% include JB/setup %}

#### 1. General Purpose Registers
1. ax register(accumulator): is where most arithmetic and logical computations take place, although
   you can do most arithmetic and logical operations in other registers, it is more efficient to use
   the ax register for such computations.
2. bx register(base): has some special purposed as well. It is commonly used to hold indirect
   addresses.
3. cx register(count): as its name implies, counts things, you often use it to count off the number
   of iterations in a loop or specifythe number of characters in a string.
4. dx register(data): has two special purposes: it holds the overflow from certain arithmetic
   operations, and it holds I/O addresses when accessing data on the 80x86 I/O bus

#### 2. Segment Registers
1. cs: code segment
2. ds: data segment
3. es: extra segment
4. ss: stack segment
