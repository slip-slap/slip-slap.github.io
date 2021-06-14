---
layout: post
title: "Microprocessor: Central Processing Unit"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}

#### Introduction
Central Processing Unit(CPU) is also make ultimately of nothing but NAND gates, and it probably has
fewer total parts than the RAM we have built, but it is not laid out so regularly and repetitively.



1. The big box labled "Control Section" in the middle of the diagram will be examined in detail
   later. It controls all of the set and enable bits in the CPU and RAM.
2. R0, R1, R2, and R3 are registers that are used as short-term storage for bytes that are needed in
   the CPU. Their inpus and outputs are connected to the bus. They can be used for many different
   purposes, to they are known as "general purpose registers"
3. The last register is called the accumulator, or ACC for short. This is a word that comes from the
   days of the old mechanical adding machines.
4. The register called 'TMP' means temporary. Its input comes from the bus, and its output goes
   downward to one and then the other of the question marked boxes. TMP has a 'set' bit, but no
   'enable' bit because we never have a reason to turn its output off.
