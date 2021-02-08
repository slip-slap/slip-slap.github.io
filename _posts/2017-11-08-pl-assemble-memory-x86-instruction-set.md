--- 
layout: post 
title: "Assembly: x86 Instruction Set" 
keywords: [] 
description: 
category: "CS"
tags: ["assembly"] 
--- 
{% include JB/setup %}

#### Introduction
The x86 CPUs provide 20 basic instruction classes. 
1. Seven of these instructions have two operands
2. Eight of these instructions have a single operand
3. Five instructions have no operands at all


#### Mov
1. mov
```ass
mov reg, reg/memory/constant
mov memory, reg
```
- reg is any of ax,bx,cx, or dx; constant is a numberic constant(using hexadecimal notation)
- memory is an operand specifying a memory location.

2. add: adds the value of the second operand to the first (register) operand, leaving the sum in the
first operand
3. sub: subtract the value of the second operand from the first, leaving the difference in the first
   operand.
4. cmp: compares the first operand against the second and saves the result of this comparison for
   use with one of the conditional jum instructions.
5. and,or: compute the corresponding bitwise logical operations on the two operands and store the
   result into the first operand
6. not: inverts the bits in the single memory or register operand.
   
#### 2. Control Transfer Instructions
1. ja    dest -- Jump if above
2. jae   dest -- Jump if above or equal
3. jb    dest -- Jump if below
4. jbe   dest -- Jump if below or equal
5. je    dest -- Jump if equal
6. jne   dest -- Jump if not equal
7. jmp   dest -- Uncontidional jump


#### 3.
The get and put instructions let you read and write integer values. 
1. Get will stop and prompt the user for a hexadecimal value and then store that value into the ax
   register.
2. Put displays the value of the ax register.

