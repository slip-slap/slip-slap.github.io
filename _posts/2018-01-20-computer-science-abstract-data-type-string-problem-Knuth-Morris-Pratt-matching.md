---
layout: post
title: "A.D.T.P.: Knuth-Morris-Pratt String Matching"
keywords: []
description: 
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}


| String | a | b | a | b | c | a | b | c | a | b  | a  | b  | a  | b  | d  |
|--------|---|---|---|---|---|---|---|---|---|----|----|----|----|----|----|
|        | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |

| Pattern | 0 | 1 | 2 | 3 | 4 | 5 |
|---------|---|---|---|---|---|---|
|         |   | a | b | a | b | d |
|         |   | 0 | 0 | 1 | 2 | 0 |
