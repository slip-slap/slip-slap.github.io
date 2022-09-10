---
layout: post
title: "Microprocessor: ALU"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}

#### History
Aristotle's logic involved two facts making a third fact. Many of our computer parts, such as AND
gates, take two bits and make a third bit. or eight AND gates take two bytes and make a third byte.
And so, the things that these gates do, has come to be knowen as logic, There maybe AND logic and OR
logic and XOR logic, but the general term for all of them is logic.
1. ANDing, ORIng and XORIng take two bytes to make a third, so they fit this definition of logic
   pretty well.
2. Shifting and NOTing have also come to be known as logic even though they only take one byte of
   input to generate their output
3. The ADDer, although it is has two inputs and is also very logical, somehow is not known to be in
   the category of logic, it is in itts own category, arithmetic.


| 000 | ADD | Add          |
|-----|-----|--------------|
| 001 | SHR | Shift Right  |
| 010 | SHL | Shift Left   |
| 011 | NOT | Not          |
| 100 | AND | And          |
| 101 | OR  | Or           |
| 110 | XOR | Exclusive OR |
| 111 | CMP | Compare      |

The Arithmetic and Logic Unit is the very center, the heart of the computer. This is where all of
the action happens. I'll bet this is a log less complicated than you thought.
