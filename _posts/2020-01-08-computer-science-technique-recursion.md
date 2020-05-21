---
layout: post
title: "C.S.T.: Recursion"
keywords: []
description: ""
category: "CS"
tags: ["C.S.T."]
---
{% include JB/setup %}

####
1. head recursion: the recursive call, when it happens, comes before other
   processing in the function.(think of it happening at the top).
- **the head recursion technique can reduce the data passed to the recursive
  call**
2. tail recursion: the processing occurs before the recursive call.
- **the tail recursion techique can result in passing additional data to recursive
  calls**.


#### 
Recursive programming is a great way to show yourself that you can solve
difficult problems.
1. Write an iterative function to solve the problem.
2. Write a "dispatcher" function.
- Dispatcher function solves problem for some "minimal" data set.
- in this case, when size parameter == 0
- Dispatcher calls iterative function to handle non-minimal cases
- must pass smaller data set to iterative function. in this case, passing size
  -1 for third parameter does the trick.
3. In dispatcher, replace call to iterative function with call to dispatcher.


#### Application in Dynamic Data Structures


#### LinkedList
Recursion requires us to divide the problem, to be able to pass a reduced
version of the original problem to the recursive call. **There is only one way to
divide a singly linked list: the first node in the list and the rest of the
list.**

##### Binary Trees
1. More complicated structures may require multiple recursive calls.
2. For applying recursion, we will conceptualize trees as having three parts:
- the node at the top, known as the root node;
- all of the nodes reached from the left link of the root, known as the left
  subtree.
- all of the nodes reached from the right link of the root, known as the right
  subtree.




#### Common Mistakes

##### Parameters

```python

```

##### Global Variables
1. The use of global variables is generally a poor programming pracice, although
   it is sometimes permissible for performance reasons. **Global variables
   should always be avoided in recursive functions when possible**
