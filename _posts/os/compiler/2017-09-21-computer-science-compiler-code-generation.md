---
layout: post
title: "Compiler: Code Generation"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Register Allocation
A key problem in code generation is deciding what values to hold in what registers.
1. Register allocation, during which we select the set of variables that will reside in registers at
   each point in the program.
2. Register assignment, during which we pick the specific register that a variable will reside in.
