---
layout: post
title: "N.N.D.: Generalization"
keywords: []
description: ""
category: "AI"
tags: ["learning","N.N.D."]
---
{% include JB/setup %}

#### Inspiration
1. The key strategy for obtaining good generalization is to find the simplest
   model that explains the data. This is a variation of a principle called
   Ockham's razor, which is named after the English logician William of Ockham.
2. The idea is that the more complexity you have in your model, the greater the
   possibility for errors.


3. In terms of neural networks, the simplest model is the one that contains the
   smallest number of free parameters(weights and biases), or, equivalently, the
   smallest number of neurons. To find a network that generalizes well, we need
   to find the simplest network that fits the data.


#### Method
1. Growing: starts with no neurons in the network and then add neurons until the
   performance is adequate.
2. pruning: start with large networks, which likely overfit, and then remove
   neurons one at a time until the performance degrades significantly.
3. global searches: such as genetic algorithms, search the space of all possible
   network architectures to locate the simplest model that explains the data.
4. regularization
5. early stopping

