---
layout: post
title: "Sort: Mergesort"
keywords: []
description: ""
category: "CS"
tags: ["sort","Algorithm"]
---
{% include JB/setup %}

1. sorting means putting data in a specified order.


#### 2-way Merging
```code
Merge(A, B, m, n):
    i = 1;
    j = 1;
    k = 1;
    while(i<= m && j<= n):
        if(A[i] < B[j]):
            c[k++] = A[i++];
        else:
            c[k++] = B[j++];
    
    for(; i<= m; i++);
        c[k++] = A[i];
    for(;j <= n; j++):
        c[k++] = B[j];
```


#### 4-way Merging




