--- 
layout: post 
title: "Assembly: UCR Standard Library" 
keywords: [] 
description: 
category: "CS"
tags: ["assembly"] 
--- 
{% include JB/setup %}

#### malloc
1. The malloc routine allocates storage on the heap and returns a pointer to the block it allocates in
the es:di registers.  Before calling malloc you need to load the size of the block(in bytes) into
the cx register. On return, malloc sets the carry flag if an error occurs(insufficient memory). If
the carry is clear, es:di points at a block of bytes the size you've specified:

```assembler
mov cx, 1024           ; Grab 1024 bytes on the heap
malloc                 ; Call MALLOC
jc MallocError         ; If memory error.
mov word ptr PNTR, DI  ; Save away pointer to block.
mov word ptr PNTR+2, ES
```

2. When you call malloc, the memory manager promised that the block it gives you is free and clear
   and it will not reallocate that block until you explicitly free it. To return a block of memory
   back to the memory manager so you can (possibly) re-use that block of memory in the future, use
   the free Library routine. free expects you to pass the pointer returned by malloc;

```assembler
les di, PNTR   ;Get pointer to free
free           ;Free that block
jc BadFree     
```


