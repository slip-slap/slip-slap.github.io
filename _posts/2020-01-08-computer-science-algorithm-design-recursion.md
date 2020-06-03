---
layout: post
title: "A.D.: Recursion"
keywords: []
description: ""
category: "CS"
tags: ["A.D."]
---
{% include JB/setup %}


#### Definition
1. Recursion: a function call itself.
- it must stop somewhere, otherwise it will lead to infinite calling.
- it has two phases, calling phase(ascending phase), returning phase(descending
  phase)

```code
void foo(int n){
    if(n > 0){
        1. calling: Ascending phase
        2. fun(n-1)
        3. returning: Descending time
    }
}
```



#### Analysise(tracing)
1. a recursive function raise to a tree. keep the tree in mind.
```code
void foo(n){
    if(n > 0){
        foo(n-1);
        foo(n-2)
        print(n)
    }
}
foo(4)
```
<img src="{{IMAGE_PATH}}/computer-science-algorithm-recursion.png">




#### difference with loops
1. In loops, you only have ascending phase
2. In recursive function, you have ascending phase and descending phase
3. So you can utilize this to code easily.

#### Recursion Type
1. Head recursion
2. Tail recursion: recursive call is the last statement of the function;
3. tree recursion: time complexity is O(n)
- how to get this answer, draw recursive tree.
4. Indirect Recursion
5. nested recursion


#### Recursion Relation
1. for sum of natural number, the relationship is:
- $sum(n)=sum(n-1)+n$
2. for factorial, the relationship is;
- $f(n) = n \times f(n-1)$
3. for fibnacci series, the relationship is:
- $f(n) = f(n-1) + f(n-2)$
4. for tree height: 
- $h(root) = h(child) + 1$
5. we can express the relationship between recursion by formula, actualy, it's
   very useful. **it's the return value of function.**
6. For a long time, I just don't know how to deal with return of recursion
   function, now I know, based on this simple formula.
7. recursion provide a way to think about problem we face, find the small
   problem, nail it, then the big problem, kind of philosphy.




#### Galois
1. You can translate any recursion into for loop, but you need create a stack by
   yourself.
2. Compiler is no big deal, it's just pre-implement some algorithm. For example,
   it implement stack structure to use recursion. 



