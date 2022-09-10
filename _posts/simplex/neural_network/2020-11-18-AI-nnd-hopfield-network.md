---
layout: post
title: "N.N.D.: Hopfield Network"
keywords: ["Hopfield" ]
description: "neural network"
category: "Simplex"
tags: ["N.N.D."]
---
{% include JB/setup %}

#### Hopfield
+ All the nodes in a Hopfield network are both inputs and outputs
+ All the nodes in a Hopfield network are fully interconnected
+ There are two kinds of Hopfield Neural Network which are Discrete Hopfield Neural Network(DHNN) and Continuous Hopfield Neural Network(CHNN)


#### Architecture
<img src="{{IMAGE_PATH}}/AI-neural-network-design-hopfield.png" />

#### Formula

$$
W_{i j}=\sum_{s=1}^{n}\left(2 V_{i}^{s}-1\right)\left(2 V_{j}^{s}-1\right)
$$

#### Energy function
we can define a function that depends on the states of the graph and the W matrix. We call this function the
Energy function associated with the network states.

#### Why Hopfield ?
Energy is always decreasing until the network reaches a stable configuration of the node states. Even more, the
stable configuration is the configuration that corresponds to the restored state vector, a local minimum of the 
energy function.


#### Inference

1. [Hopfield Networks UCLA](http://web.cs.ucla.edu/~rosen/161/notes/hopfield.html)
2. [Discrete Hopfield Network](http://neupy.com/2015/09/20/discrete_hopfield_network.html)
3. [an intuitive explanation of hopfield network](https://www.quora.com/What-is-an-intuitive-explanation-of-what-a-Hopfield-network-is)

