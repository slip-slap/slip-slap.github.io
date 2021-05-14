---
layout: post
title: "Compiler: Run-Time Environments"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Duty
A compiler must accurately implement the abstractions embodied in the source-language definition.
These abstractions typically include
1. the concepts such as names, scopes, bindings, data types, operators, procedures, parameters, and
   flow-of-control constructs.
2. The compiler must co-operate with the operating system and other system softwares to support
   these abstractions on the target machine.


#### Static Versus Dynamic Storage Allocation
The two adjectives static and dynamic distinguish between compile time and run time, respectively
1. We say a storage allocation decision is static.
