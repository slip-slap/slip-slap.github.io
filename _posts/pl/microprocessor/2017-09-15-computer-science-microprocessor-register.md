---
layout: post
title: "Microprocessor: Register"
keywords: []
description: 
category: "CS" 
tags: ["microprocessor"]
---
{% include JB/setup %}

#### Component
One bit of computer memory is made of only four NAND gates.
| a | b | c |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |



<img src="{{IMAGE_PATH}}/cs_processor_memory_bit.png" />
<img src="{{IMAGE_PATH}}/cs_processor_memory_byte.png" />
<img src="{{IMAGE_PATH}}/cs_processor_memory_enabler.png" />

1. When gates are used for something like this, the name "gate" starts to make some sense.
2. An enabler allows a byte through when the bit 'e' is 1 and stops the byte when it is 0.
3. So 'e' being on is like opening a gate, and 'e' being off is like closing a gate.
4. There will be a few places where there are registers that never need to have their outputs turned
   off. In those cases, we will draw a register that only has a 'set' bit, and no 'enable' bit, we
   should probably refer to these devices as bytes, but we will call them registers nonetheless.

<img src="{{IMAGE_PATH}}/cs_processor_memory_register.png" />

