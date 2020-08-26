---
layout: post
title: "A.D.T.P.: Longest Common Subsequence"
keywords: []
description: 
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### Problem
1. There are two strings A and B as following:

| b | d | \\0|
|---|---|---|
| 0 | 1 | 2 |


| a | b | c | d | \\0  |
|---|---|---|---|---|
| 0 | 1 | 2 | 3 | 4 |


#### 2.1 Recursion Method(top down approach)
1. Code

```code
int LCS(i,j):
    if(A[i] == '\0' !! B[j] == '\0'):
        return 0;
    else if(A[i] == B[j]):
        return 1 + LCS(i+1, j+1);
    else:
        return max(LCS(i + 1, j), LCS(i, j+1));
```

2. Recursive Tree

<img src="{{IMAGE_PATH}}/computer-science-algorithm-problem-lcs.png">


4. Recursive Table
|   |   | a | b | c | d | \\0  |
|---|---|---|---|---|---|---|
|   |   | 0 | 1 | 2 | 3 | 4 |
| b | 0 | 2 | 2 |   |   |   |
| d | 1 | 1 | 1 | 1 | 1 |   |
| \\0  | 2 | 0 | 0 | 0 |   | 0 |

#### 2.2  Dynamic Approach(bottom up approach)

1. code

```code
if(A[i] = B[j]):
    LCS[i,j] = 1 + LCS[i-1, j-1]
else:
    LCS[i,j] = max(LCS[i-1, j], LCS[i, j-1])
```
2. bottom up table 
|   |   | a | b | c | d |   |
|---|---|---|---|---|---|---|
|   |   | 0 | 1 | 2 | 3 | 4 |
| b | 0 | 0 | 0 | 0 | 0 | 0 |
| d | 1 | 0 | 0 | 1 | 1 | 1 |
|   | 2 | 0 | 0 | 1 | 1 | 2 |

- time complexity $\Theta(m \times n)$







