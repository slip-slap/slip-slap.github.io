---
layout: post
title: "ML: Neural Network"
keywords: []
description: "neural network"
category: "AI"
tags: ["ML","supervised" ]
---
{% include JB/setup %}


###  a neuron
the weights bias(b) namely is the threshold
<img src="{{IMAGE_PATH}}/neuron.png" height="" width="" />


### The architecture configuration of N.N.

####  Output layer

1. If N.N. is a regressor, then the output has a single node. 
2. If N.N. is a classifer, t


$$
\begin{align*}
  & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right)
    = \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\
      & (x_1, \ldots, x_n) \left( \begin{array}{ccc}
            \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\
                  \vdots & \ddots & \vdots \\
                        \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
                            \end{array} \right)
        \left( \begin{array}{c}
              y_1 \\
                    \vdots \\
                          y_n
                              \end{array} \right)
        \end{align*}
$$


the formulation $$ p(y \vert x) $$ is used to mean "the probability of $$y$$ given $$x$$ "
the cost function



If this is only one node in the output layer of neural network
$$
\begin{equation}
Cost(h_{\theta},y) = -y\log( h_{\theta}(x)) - (1-y)\log(1-h_{\theta}(x)) 
\end{equation}
$$

if we generalize this for multiple output nodes, and we get:

$$
\begin{equation*}
J(\Theta) = -\frac{1}{m}\sum_{i=1}^{m}\sum_{k=1}^{K}[y_k^{(i)}\log((h_{\Theta}^{(x^(i)}))_k)+(1-y_k^{(i)})\log(1-(h_{\Theta}^{(x^(i)}))_k)]+\frac{\lambda}{2m}\sum_{i=1}{L-1}
\end{equation*} $$






### 参考链接
1. [implement backprogagation from scratch by python](https://machinelearningmastery.com/implement-backpropagation-algorithm-scratch-python/)
2. [how the backpropagation algorithm works](http://neuralnetworksanddeeplearning.com/chap2.html)
3. [All you need to know about neural network and back propagation](https://towardsdatascience.com/everything-you-need-to-know-about-neural-networks-and-backpropagation-machine-learning-made-easy-e5285bc2be3a)
4.[code from scratch in github](https://github.com/slip-slap/AI/tree/master/bp)
