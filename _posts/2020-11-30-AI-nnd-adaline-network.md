---
layout: post
title: "N.N.D.: ADALINE Network"
keywords: []
description: ""
category: "AI"
tags: ["N.N.D."]
---
{% include JB/setup %}


#### Background
In 1960 Widrow introduced the ADALINE(ADAptive LInear NEuron) network, and a
learning rule which called the LMS(Least Mean Square) algorithm.


#### Drawback
1. lack of success in adapting the algorithm to multiplayer networks
2. Widrow stopped work on neural networks in the early 1960s and began to work
   full time on adaptive signal processing.

#### With Perctpron
1. Both the ADALINE and the perceptron suffer from the same inherent limitation,
   they can only solve linearly separable problems.
2. The LMS algorithm is more powerful than the perceptron learning rule.
3. The perceptron rule is guarantedd to converge to a solution that correctly
   categorizes the training patterns, the resulting network can be sensitive to
   noise, since patterns often lie close to the decision boundaries.
4. The LMS algorithm minimizes mean square error, and therefore tries to move
   the decision boundaries as far from the training patterns as possible.


#### Reference
1. [implement backprogagation from scratch by python](https://machinelearningmastery.com/implement-backpropagation-algorithm-scratch-python/)
2. [how the backpropagation algorithm works](http://neuralnetworksanddeeplearning.com/chap2.html)
3. [All you need to know about neural network and back propagation](https://towardsdatascience.com/everything-you-need-to-know-about-neural-networks-and-backpropagation-machine-learning-made-easy-e5285bc2be3a)
4. [code from scratch in github](https://github.com/slip-slap/AI/tree/master/bp)