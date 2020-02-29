---
layout: post
title: "Boltzmann Machine"
keywords: ["Boltzmann Machine", "neural network",""]
description: "neural network"
category: "AI"
tags: ["model" ]
---
{% include JB/setup %}

#### Boltzmann Machine
1. Boltzmann Machine is a neural network, you can see from the following table

|    Network   |         network type         |                  Used for  |
|:------------:|:----------------------------:|---------------------------:|
|              |   Artificial Neural Network  | Regress and Classification |
|  Supervised  | Convolutional Neural Network |       Computer Vision      |
|              |   Recurrent Neural Network   |    Time Series Analysis    |
|              |      Self-Organizing Map     |      Feature Detection     |
| Unsupervised |    Deep Boltzmann Machines   |    Recommendation System   |
|              |          AutoEncoder         |    Recommendation System   |


2. what's the difference between the **Boltzmann Machine** and the other neural networks.
such as Artificial Neural Network, Convolutional Neural Network, and Recurrent Neural Network. they have
inputs and outputs. they use gradient descent method to optimize the patameters. But in a Boltzman Machine 
Neural Network, you can't see the difference between the input nodes and output nodes. why why why ? what's 
the crap ? because in the view of the Boltzmann machine, there is no different between the input nodes and the
output nodes. As you can see from the nuclear power plant, we can image all the nodes in a Boltzmann stands for 
a parameter in the nuclear power plant. the weights between two nodes can be treated as the influence of one parameter
works on the other parameter. Among the cooling tower temperature parameter, water vapor volume parameter, and cooling water
volume parameter, there are very important relation between cooling tower temperature and vapor volume parameter, so the
weight the two parameters are strong. Because there is nothing relation between the vapor volume parameter and the cooling water 
volume, so the weights between the two parameters will be weak.
<img src="{{IMAGE_PATH}}/Boltzmann-machine.png" height="" width="" />
<img src="{{IMAGE_PATH}}/Nuclear_Plant.jpg" height="" width="" />


#### Restricted Boltzmann Machine(RBM)
<img src="{{IMAGE_PATH}}/Restricted-boltzmann_machine.png" height="400" width="400" />


#### How to train a RBM neural network
<img src="{{IMAGE_PATH}}/boltsmann_train.png" height="" width="" />
1. form this picture, we can treat the hidden nodes as the feature of the movies, maybe the feature is movie type, or the time of the movie,
or the director of the movie. no matter whatever it is. So we can treat the data flow direction from the visible nodes to the hidden nodes as the process
of extracting the features.

2. we can treat the parameters of the flow direction from the hidden nodes to the visible nodes as the user's taste. Maybe the user like drama movie, so 
the parameter form the node of drama feature to the Fight Club will be high.


#### update rule

1. update rule called contrastive divergence: which is basically a fancy term for approximate gradient descent

#### Formula

Restricted Boltzmann Machine Energy function:

$$
\begin{equation}
\begin{split}
E(v, h)&=-\sum_{i} a_{i} v_{i}-\sum_{j} b_{j} h_{j}-\sum_{i} \sum_{j} v_{i} w_{i, j} h_{j} \\
         &=-a^{\mathrm{T}} v-b^{\mathrm{T}} h-v^{\mathrm{T}} W h     \text{(in matrix notation)}  \\
         \end{split}
         \end{equation}
         $$

Joint Distribution:

$$
P(v, h)=\frac{1}{Z} e^{-E(v, h)}
$$

Partition Function:

$$
Z=\sum_{v}\sum_{h}e^{-E(v, h)}
$$


where Z is intractable


