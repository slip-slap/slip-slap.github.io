---
layout: post
title: "Microprocessor: Control Section"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}

#### Introduction
Every computer has one special bit. All other bits in a computer come from somewhere, they are set
on and off by other bits or switches. 
1. This one special bit turns on and off all by itself. But there is nothing mysteriour about it, it
   just goes on and off very regularly and very quickly.



#### Stepper
1. It has two inputs. One is called 'clk,' because this is where we connect a bit that is going on
   and off, such as our original clock bit.
2. The other input is called 'reset,' which is used to return the stepper back to step one.
3. For outputs, it has a number of bits, each of which will come on for one complete clock cycle,
   and then turn off, one after the other
