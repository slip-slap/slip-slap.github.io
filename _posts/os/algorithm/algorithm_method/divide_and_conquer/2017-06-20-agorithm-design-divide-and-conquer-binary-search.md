---
layout: post
title: "A.D.: Binary Search"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}

```code
binarySearch(A, n, key):
    low  = 1
    high = n
    while(l< h){
        mid = (l+h)/2
        if(key == A[mid]):
            return mid
        if(key < A[mid]):
            h = mid - 1
        else:
            l = mid + 1

    }
```
