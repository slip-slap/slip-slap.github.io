---
layout: post
title: "I.T.: Symbol Codes"
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### HAHA
Source Coding Theorem(Symbol Codes): There exists a variable-length encoding C
of an ensemble X such that the average length of an encoded symbol,
L(C,X),satisfies $L(C,X) \in [H(X), H(X)+1) $

#### Notation for alphabets.
1. $\mathcal{A}^N$ denotes the set of ordered N-tuples of element from the set
   $\mathcal{A}$, i.e., all strings of length N. 
   - $$
   \{0,1\}^{3}=\{000,001,010,011,100,101,110,111\}
   $$
2. The symbols $\mathcal{A}^+$ will denote the set of all strings of finite
   length composed of elements from the set $\mathcal{A}$
   - $$
   \{0,1\}^{+}=\{0,1,00,01,10,11,000,001, \ldots\}
   $$

#### Definition 
1. Prefix Code: A symbol code is called a prefix code if no codeword is a prefix of any other
   codeword.
2. Expected Length: expected length $L(C,X)$ of a symbol code C for ensemble X
   is  <br />
$$
L(C, X)=\sum_{x \in \mathcal{A}_{X}} P(x) l(x)
$$

#### Kraft inequality
For any uniquely decodeable code $C(X)$ over the binary alphabet $\{0,1\}$, the
codeword lengths must satisfy: <br />
$$
\sum_{i=1}^{I} 2^{-l_{i}} \leq 1
$$ <br />
where $I=|\mathcal{A}_X|$ 
- Completeness. If a uniquely decodeable code satisfies the Kraft inequality
  with equality then it is called a complete code.


#### Huffman Coding Algorithm
1. Take the two least probablie symbols in the alphabet. These two symbols will
   be given the longest codewords, which will have equal length, and differ only
   in the last digit.
2. Combine these two symbols into a single symbol, and repeat.

##### Disadvantages of the Huffman code

