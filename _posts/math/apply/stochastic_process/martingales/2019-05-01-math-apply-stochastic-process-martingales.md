---
layout: post
title: "S.P.: Martingles"
keywords: [] 
description: ""
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}

#### 1 Definition
1. Martingales: Let $X_0,X_1,X_2,\cdots$ be a markov chain. The chain is a
   martingle if for all $n=0,1,2,\cdots$, we have $E(X_{n+1} - X_n|X_n)=0$, that
   is, on average the chain's value does not change, regardless of what the
   current value $X_n$ actually is.
- a special class of stochastic processes, they are characterized
   by "staying the same on average"

##### 1.1 Example
Let {$X_n$} be simple random walk with $p=1/2$, then $X_{n+1}-X_n$ is equal to
either 1 or -1, with probability 1/2 each. Hence, <br />
$E(X_{n+1}-X_n|X_n)=(1)(1/2)+(-1)(1/2)=0$ <br />
So {$X_n$} stays the same on average and is a maringale.



#### 2 Galois
1. Simply put, Maritingales is a fair game.
