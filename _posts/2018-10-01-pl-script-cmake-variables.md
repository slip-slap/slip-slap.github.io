---
layout: post
title: "CMake: Variables"
keywords: []
description: "python"
category: "PL"
tags: ["cmake","script"]
---

####
1. Variables are the basic unit of storage in the CMake Language. Their values
   are always of string type
2. **set()** and **unset()** commands explicitly set or unset a variable.
3. variable names are case-sensitive 


#### Environment Variables
1. Environment Variables are like ordinary Variables, with the following
   differences:
- Scope: Environment variables have global scope in a CMake process. They are
never cached.
- Initialization: Initial values of the CMake environment variables are those of
  the calling process. Values can be changed using the **set()** and
  **unset()** commands. 


