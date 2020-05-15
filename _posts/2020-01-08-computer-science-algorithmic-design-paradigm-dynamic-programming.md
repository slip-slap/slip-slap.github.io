---
layout: post
title: "A.D.P.: Dynamic Programming"
keywords: []
description: ""
category: "CS"
tags: ["A.D.P."]
---
{% include JB/setup %}

####
1. why we call this boy dynamic programming, 
- Dynamic why, why ? just a fancy terminology, it sounded cool. 
- Programming means optimization in America.
- DP is "careful brute force"
- Dp is guessing + recursion + momoization

topological sort of subproblem dependency DAG.

1. define subproblems: is the most difficult part, need some insight.
- rule of thumb
- suffixes $x[i:]$: topological order is always right to left, decreasing i
- prefixes $x[:i]$: topologican order is always left to right, increasing i
- substrings: increase substring
2. guess: 
- **what to guess**, maybe the most important problem, with some
  practice, you can get it.
3.  recurrence
4.  recurrence + momoize
5. solve original problem
- parent pointer

#### Application
1. naive

```python
def fib(n):
    if n <= 2:
        f = 1
    else:
        f = fib(n-1)+fib(n-2)
    return f
```


2. Memoized DP Algorithm
- fib(k) only recurses the first time it is called
- memoized calls cost O(1)
- nonmemoized calls is n: fib(1), fib(2), ... ,fib(n)

```python
memo = {}
def memo_fib(n):
    if n in memo:
        return memo[n]
    if n <= 2:
        f = 1
    else:
        f = memo_fib(n-1)+memo_fib(n-2)
    memo[n] = f
    return f
```

3. Bottom-up DP Algorithm

```python
def bottom_up_fib(n):
    fib = {}
    for k in range(1, n+1):
        if k<= 2:
            f = 1
        else:
            f = fib[k-1] + fib[k-2]
        fib[k] = f
    return fib[n]  
```





#### Application

##### Shortest Path Problem
##### Text Justification
1. Microsoft Word: greedy 
2. Latex: badness = $(\text{page width - total width})^3$

##### Parenthesization
##### Edit Distance
##### Knapsack

