---
layout: post
title: "I.T.: Data Compression-Source Coding Theorem"
keywords: [""]
description: ""
category: "math"
tags: ["apply","I.T."]
---
{% include JB/setup %}

#### Motivation
Why should $log{\frac{1}{p_i}}$ have anything to do with the information
content? why not some other function of $p_i$?

#### HAHA
1. The Shannon information content can be intimately conected to the size of a
   file that encodes the outcomes of a random experiment.

#### Compressor
There are only two ways in which a 'compressor' can actually compress files:
1. A lossy compressor compresses some files, but maps some files to the same
   encoding.
2. A lossless compressor maps all files to different encodings; if it shortens
   some files, **it necessarily makes other longer**.

The smallest $\delta$-sufficient subset $S_{\delta}$ is the smallest subset of
$\mathcal{A}_X$ satisfying <br />

$$
P\left(x \in S_{\delta}\right) \geq 1-\delta
$$
- for each value of $\delta$ we can then define a new measure of information
  content, the log of the size of this smallest subset $S_{\delta}$

- The essential bit content of X is: <br />
$$
H_{\delta}(X)=\log _{2}\left|S_{\delta}\right|
$$

#### Simple Data Compression Methods
1. One way of measuring the information content of a random variable is simply
   to count the number o possible outcomes, $|\mathcal{A}_X|$. (The number of
   elements in a set $\mathcal{A}$ is denoted by $|\mathcal{A}|$)

#### Shannon's Source Coding Theorem
N i.i.d. random variables each with entropy H(X) can be compressed into more
than NH(X) bits with negligible risk of information, as $N \rightarrow \infy$;
conversely if they are compressed into fewer than NH(X) bits it is virtually
certain that information will be lost.

#### Asymptotic Equipartition Principle
For an ensemble of N independent identically distributed random variables $X^N
\equiv (X_1,X_2,\cdots,X_N)$, with N sufficiently large, the outcome
$x=(x_1,x_2,\cdots,x_N)$ is almost certain to belong to a subset of $\mathcal{A}^N_X$ having
only $2^{NH(X)}$ members, each having probability close to $2^{-NH(X)}$
- denote the ensemble $x=(x_1,x_2,\cdots,x_N)$ by $X^N$

#### Galois
1. Source coding just another terminology for data compression.

