---
layout: post
title: "N.N.D.: Convolutional Neural Network"
keywords: [] 
description: 
category: "AI"
tags: ["N.N.D."]
---
{% include JB/setup %}

#### differentiate a cross Entropy Cost Function

$
\begin{aligned} \frac{\partial L}{\partial z_{i}} &=\frac{\partial L}{\partial a_{j}} \cdot \frac{\partial a_{j}}{\partial z_{i}} \\ &=\frac{\partial\left(-\sum_{j}^{n} y_{j} \ln a_{j}\right)}{\partial a_{j}} \cdot \frac{\partial a_{j}}{\partial z_{i}} \\ &=-\sum_{j}^{n} y_{j} \frac{1}{a_{j}} \cdot \frac{\partial a_{j}}{\partial z_{i}} \end{aligned}
$


$
\begin{aligned} \frac{\partial a_{j}}{\partial z_{i}} &=\frac{\partial\left(\frac{e^{z_{i}}}{\sum_{k} e^{z_{k}}}\right)}{\partial z_{i}} \\ &=\frac{e^{z_{i}} \cdot \sum_{k} e^{z_{k}}-\left(e^{z_{i}}\right)^{2}}{\left(\sum_{k} e^{z_{k}}\right)^{2}} \\ &=\left(\frac{e^{z_{i}}}{\sum_{k} e^{z_{k}}}\right)\left(1-\frac{e^{z_{i}}}{\sum_{k} e^{z_{k}}}\right) \\ &=a_{i}\left(1-a_{i}\right) \end{aligned}
$


$
\frac{\partial a_{j}}{\partial z_{i}}=\frac{\partial\left(\frac{e^{z_{j}}}{\sum_{k} e^{z_{k}}}\right)}{\partial z_{i}}=\frac{0-e^{z_{j}} e^{z_{i}}}{\left(\sum_{k} e^{z_{k}}\right)^{2}}=-a_{j} a_{i}
$

combine the above two conditions:

$
\begin{aligned} \frac{\partial L}{\partial z_{i}} &=-\sum_{j}^{n} y_{j} \frac{1}{a_{j}} \cdot \frac{\partial a_{j}}{\partial z_{i}} \\ &=-y_{i} \frac{1}{a_{i}} \cdot a_{i}\left(1-a_{i}\right)-\sum_{j \neq i} y_{j} \frac{1}{a_{j}} \cdot\left(-a_{j} a_{i}\right) \\ &=-y_{i}+a_{i} y_{i}+\sum_{j \neq i} y_{j} a_{i} \\ &=-y_{i}+\sum_{j} y_{j} a_{i} \end{aligned}
$


since $y_{i}$ is a one-hot vector:

$
\begin{array}{c}{\sum_{j} y_{j} a_{i}=a_{i}} \\ {\frac{\partial L}{\partial z_{i}}=a_{i}-y_{i}}\end{array}
$


#### Galois
1. Convolutional neural network is nothing special.
2. Nobody knows why this work, but it worked very well.


#### Trashed Comment
1. The relationship between neural network and convolutional neural network is how
   to treat the input signal. If the network is full connected, then it is
   neural network, convolutional neural network is just  a special case which
   every neuron is partly connected to the input, which more imitate human
   behavior.

   



#### Inference
1. [Convolutional neural networks backpropagation: from intuition to derivation](https://grzegorzgwardys.wordpress.com/2016/04/22/8/)
2. [differentiate a cross entropy cost function](https://wu-2018.github.io/2018/11/02/differentiate-a-cross-entropy-cost-function.html)
3. [CS231](https://cs231n.github.io)

