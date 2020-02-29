---
layout: post
title: "I.T.: Hamming Code"
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Concept
1. Block Code: A block code is a rule for converting a sequence of source bits
   s, of length K, say, into a transmitted sequence t of length N bits.
- To add redundancy, we make N greater than K. In a linear block code, the extra
  N-K bits are linear functions of the original K bits; 
- These extra bits are called parity-check bits.

<img src="{{IMAGE_PATH}}/math-apply-information-theory-hamming-code.png"/>
- The first four transmitted bits, $t_1t_2t_3t_4$ are set equal to the four
  sources bits $s_1s_2s_3s_4$
- The parity-check bits $t_5t_6t_7$ are set so that the parity within each
  circle is even
- The figure shows the transmitted codeword for the case s=1000
- These codewords have the special property that any pair differ from each other
  in at least three bits.

$t=G^t s$
$$
\mathbf{G}^{\top}=\left[\begin{array}{cccc}{1} & {0} & {0} & {0} \\ {0} & {1} &
{0} & {0} \\ {0} & {0} & {1} & {0} \\ {0} & {0} & {0} & {1} \\ {1} & {1} & {1} &
{0} \\ {0} & {1} & {1} & {1} \\ {1} & {0} & {1} & {1}\end{array}\right]
$$

#### Decoding Hamming code
1. If we assume that the channel is a binary symmetric channel and that all
   source vectors are equiprobablle, then the optimal decoder identifies the
   source vector s whose encoding $t(s)$ differs from the received vector t in
   the fewest bits.
