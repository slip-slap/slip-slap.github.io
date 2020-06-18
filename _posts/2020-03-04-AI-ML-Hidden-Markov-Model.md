---
layout: post
title: "Hidden Markov Model"
keywords: ["Markov Chain", "HMM"]
description: ""
category: "AI"
tags: ["model" ]
---
{% include JB/setup %}


### Components of A HMM 

1. $$Q=q_{1}q_{2}...q_{N}$$ a set of N states
2. $$A=a_{11}...a_{ij}...a_{NN}$$ a transition probability matrix A, each $$a_{ij}$$ representing the probability of moving 
form state $$i$$ to state $$j$$, $$s.t. \sum_{j=1}^Na_{ij}=1 \forall i$$
3. $$O=o_1o_2...o_T$$ a sequence of T observations
4. $$B=b_i(o_t)$$ a sequence of observation likelihoods, also called emission probabilities, each expressing a probability of an observation
$$o_t$$ being generated from a state $$i$$
5. $$
\pi=\pi_{1}, \pi_{2}, \dots, \pi_{N}
$$ an initial probability distribution over states

#### three problem

1. **Likelihood** Given an HMM $$\lambda=(A,B)$$ and an observation $$O$$, determine the likelihood 
$$
P(O | \lambda)
$$

2. **Decoding** Given an observation sequence $$O$$,and an HMM $$\lambda=(A,B)$$, discover the best hidden state sequence Q
3. **Learning** Given an observation sequence $$O$$, and the set of states in the HMM, learn the HMM parameters A and B

 
### Two simplifying assumptions

A first-order hidden Markov model instantiates two simpliying assumptions.
1. the probability of a particular state depends on only the previous state


### Algorithm

#### Forward Algorithm
<img src="{{IMAGE_PATH}}/HMM-forward-algorithm.png" height="" width="" />





### Reference
1. [HHM](http://www.blackarbs.com/blog/introduction-hidden-markov-models-python-networkx-sklearn/2/9/2017)
2. [stanford Hiddern Markov Model](https://web.stanford.edu/~jurafsky/slp3/A.pdf)
3. [CSDN-HMM](https://blog.csdn.net/likelet/article/details/7056068)
