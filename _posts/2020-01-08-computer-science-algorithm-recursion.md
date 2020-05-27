---
layout: post
title: "A.R.: Recursion"
keywords: []
description: ""
category: "CS"
tags: ["A.R."]
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
1. linear recursion
2. tree recursion




