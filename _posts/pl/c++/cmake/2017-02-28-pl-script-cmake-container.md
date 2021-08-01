---
layout: post
title: "CMake: Container"
keywords: []
description: 
category: "PL"
tags: ["cmake"]
---

#### List
The lisb subcommands **APPEND INSERT FILTER REMOVE_ITEM REVERSE SORT** may create new values for the
list within the current CMake variable scope.
- A list in cmake is a **;** separated group of strings. For example, **set(var a b c d e)** creates
  a list with **a;b;c;d;e;**, and set **set(var "a b c d e")** creates a string or a list with one
  item in it.

