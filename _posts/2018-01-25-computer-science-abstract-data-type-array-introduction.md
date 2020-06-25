---
layout: post
title: "A.D.T.: Array"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

####
1. representation is implemented by the compiler.
2. operations on their data is not given by the compiler.


#### Array ADT
1. Data
- Array Space
- size
- length
3. Operations
- display()
- add(x)
- insert(index, x)
- search(x)





#### Galois
1. Array and list are the most important data structure, all the other data
   structure is derivated from this two basic structure.
2. String ,in nature, just array, but presents in a character way, no big deal. 
3. computer are not born with array, they are gift provided by the compiler.
   Don't take anything for granted.

4. It is not just array, given specific context, it can be used to stands for
   anything.
- In breadth first search, array is used to denote visited node, -1 can denotes
  exist, 0 denotes nonexist
- In finding a pair of sum, array is used as the hashtable, element value in the
  array is denoted whether they exist or not.
- In minimum spanning tree algorithm, array can be used to save the tree.
No matter whatever situation you are in, try to use array to denote related value,
describe the semantics.


