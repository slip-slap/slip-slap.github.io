---
layout: post
title: "Debugger: Crash"
keywords: [] 
description: 
category: "PL"
tags: ["tool","script"]
---
{% include JB/setup %}

#### When happen
1. the most common cause of a crash is for a program to attempt to access a
   memory location without having the permisson to do so. The hardware will
   sense this and execute a jump to the operating system.
2. The OS will normally announce that the program has caused a segmentation
   fault, commonly referred to as a seg fault, and discontinue execution of the
   program.
