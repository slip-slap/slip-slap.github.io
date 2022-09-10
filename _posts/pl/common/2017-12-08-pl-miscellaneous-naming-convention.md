---
layout: post
title: "PL: Naming Convention"
keywords: []
description: 
category: "PL"
tags: []
---
{% include JB/setup %}

####
1. Camel Case: (someVar, someClass)
2. Pascal Case:(SomeVar, SomeClass)

#### H
1. underscores and lowercase was the style perferred by Bjarne Stroustrup in
   "The C++ Programming Language". He made a statement along the lines that
   underscores in names were to be preferred because it was more readable to an
   international community where english is not the primary language.


#### PEP8
1. regular\_variables: Variable names should be lowercase, where necessary
   separating words by underscores
2. CONSTANTS: to indicate that a variable should be treated as if it were a
   constant, names should be uppercase, where necessary separating words by
   underscores
3. function\_names(): Names of functions should be lowercase, where necessary
   separating words by underscores
4. ClassNames: class name should capitalize the first letter of each word.

```python
customer_name = "Alice"
function get_customer_id():
    id = "a4138"
    return id
```
