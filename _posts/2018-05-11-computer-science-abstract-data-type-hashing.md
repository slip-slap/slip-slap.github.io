---
layout: post
title: "A.D.T.: Hashing With Chaining"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### Why this crap ?
1. we have linear search, its time complexity is $\Theta (n)$
2. we have binary search, its time complexity is $log_2^n$
3. The problem is: we need more, we don't satisify with the current situation,
   we need more, how about constant time, can we do it? give it a shot.
4. The solution is **hashing** !!! Just constant time, are you excited ? let's
   began our journey.

#### Type
1. Open Hashing
- Chaining
2. Closed Hashing
- Open Addressing
- Linear Probing
- Duadratic Probing
- Double Hashing
1. simple uniform hashing

#### 
1. Expected length of chain for k keys, m slots:  n over m, called $\alpha$, the
   load factor of the table.


####  Galois
1. Hashing is from key to location, then we put something on the location.
2. How to design hash function is the most important thing.

