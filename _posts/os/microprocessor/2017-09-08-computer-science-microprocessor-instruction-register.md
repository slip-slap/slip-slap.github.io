---
layout: post
title: "Microprocessor: Instructions"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}

#### Introduction
1. The bits from this register will "instruct" the CPU what to do. The IR gets its input from the
   bus, and its ouput goes into the control section of the CPU where the bits select one of several
   possible operations.
2. Instruction Address Register(IAR): this register has its input and output connected to the bus
   just like the general purpose registers, but this one only has one purpose, and that is to store
   the RAM address of the next instruction what we want to move into the IR.

