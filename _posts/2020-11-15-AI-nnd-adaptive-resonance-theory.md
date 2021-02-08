---
layout: post
title: "N.N.D.: Adaptive Resonance Theory"
keywords: []
description: 
category: "AI"
tags: ["N.N.D."]
---
{% include JB/setup %}


#### Background
A key problem of the Grossberg network and the competitive networks is that they
do not always form stable clusters.
- Grossberg did show that if the number of input patterns is not too large, or
  if the input patterns do not form too many clusters relative to the number of
	  neurons in Layer 2, then the learning evntually stabilizes.
- He also showed the standard competitive networks do not have stable learning
  in response to arbitrary input patterns
- The learning instability occurs because of the network's adaptability(or
  plasticity), which causes prior learning to be eroded by more recent learning.


#### Stability/plasticity Dilemma
How can a system be receptive to significant new patterns and yet remain stable
in response to irrelevant patterns?
- We know biological systems are very good at this. For example, you can easily
  recognize your mother's face, even if you have not seen her for a long time
  and have met many new people in the mean time.

#### Inspiration
The key innovation of ART is the use of expectations. As each input pattern is
presented to the network, it is compared with the prototype vector that it most
closely matches(the expectation). If the match between the prototype and the
input vector is not adequeate, a new prototype is selected. In this way,
previously learned memories (prototypes) are not eroded by new learning.




