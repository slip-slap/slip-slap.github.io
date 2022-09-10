---
layout: post
title: "Microprocessor: Peripherals"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}


#### Duty
All we need for I/O is a frew wires, and a few instruction.
1. For the wires, we are going to extend our cpu bus outside of the computer and add four more wires
   to go with it. The combination of the 12 wires will be called the I/O bus, everty thing that is
   connected to the computer is attached to the I/O bus.

2. The devices that are attached to the I/O bus are called peripheral, because they are not the
   inside of the computer, but the outside of the computer.


#### Property
1. Every thing attached to the I/O bus has its unique I/O address. This is not the same as the
   address of the bytes in RAM, it is just some number.


#### Thinking
The CPU and RAM are the computers, everything else, printer, disk, mouse, screen, the things that
make sound, the things that connect to the internet, all these things are peripheral, and all they
are capble of doint is accepting bytes of data from the computer or sending bytes of data to the
computer.
- The adapter for different devices have different capabilities, different number of registers, and
  different requirement, as far as what the program running in the CPU must do to operate the device
  properly.

#### Adapter
1. Why called adapter, becasue it accepts the same byte of data from I/O bus, but react differently
   accoding to the device. So it's called adapter.
