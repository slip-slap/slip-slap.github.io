---
layout: post
title: "Microprocessor: Clock and Stepper"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}

#### A
This gate will just go on and off as quickly as possible. The simplified diagram shows this to be
the one special bit in the computer that has an output but does not have any inputs.
- This bit has a name. It is called the clock. Now we usually think of a clock as a thing with a
  dial and hands, or some numbers on a screen, and we have seen such clocks in the corner of a
  computer screen. Unfortunately, someone named this type of bit, a clock, and the name stuck with
  the computer pioneers. It could have been called the drumbeat or the pacesetter or the heart or
  the rhythm secton, but they called it a clock.


#### 2.
1. Attach a length of wire to the output of the clock. This will delay the electricity slightly. We
   want it delayed about one quarter of cycle.


2. If you look at the timing here, this meets our requirements of needing to first enable the output
   of a register, and then, after the data has a little time to travel down the bus, to turn the set
   bit of the destination register on and off before turning the enable bit off at the first
   register.


#### Stepper
1. It has two inputs. One is called 'clk,' because this is where we connect a bit that is going on
   and off, such as our original clock bit.
2. The other input is called 'reset,' which is used to return the stepper back to step one.
3. For outputs, it has a number of bits, each of which will come on for one complete clock cycle,
   and then turn off, one after the other



