--- 
layout: post 
title: "Assembly: Directives and Psedo-Opcodes" 
keywords: [] 
description: 
category: "CS"
tags: ["assembly"] 
--- 
{% include JB/setup %}

#### Disadvantage
1. The one major disadvantage to assembly language over pure machine code is that you must frist
   assemble and link a program before you can execute it.
2. An assembler like Microsoft's Assembler(MASM) provides a large number of features for assembly
   language prgrammaers. ALthough learning about these features takes a fair amount of time, they
   are so useful that it is well worth the effort.


#### Feature

2. A pseudo-opcode is a message to the assembler, just like an assembler directive, howevery a
   pseudo-opcode will emit object code bytes. Example of pseudo-opcodes include byte, word, dword,
   qword, and tbyte. These instructions emit the bytes of data specified by their operands but they
   are not true 80x86 machine instructions.

#### Format
Assembly language statements in a source file use the following format
**{Label} {Mnemonic {Operand}} {;Comment}**
1. Label field is (usually) an optional field containing a symbolic label for the current statement.
Labels are used in assembly language, just as in HLLs, to mark lines as the target of GOTOs(jumps).
You can also specify variables names, procedure names, and other entities using symbolic labels.

2. A mnemonic is an instruction name (e.g., mov, add, etc.). **The word mnemonic means memory aid. mov
   is much easier to remember than the binary equivalent of the mov instruction.** The braces denote
   that this term is optional. Note, however, that you cannot have an operand without a mnemonic.
- The mnemonic field contains an assembler instruction. Instructions are divided into three classes:
  80x86 machine instructions, assembler directives, and pseudo opcodes.
- Assembler directives are special instructions that provide information to the assembler but do
   not generate any code. Examples include the segment directive, equ, assume, and end. These
   mnemonics are not valid 80x86 instructions. They are messages to the assember, nothing else.


