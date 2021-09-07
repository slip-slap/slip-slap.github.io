---
layout: post
title: "G.M.: Kalman Filter"
keywords: [] 
description: 
category: "math"
tags: ["apply","G.M."]
---
{% include JB/setup %}


#### 1. Problem


#### 2. Model Architecture

<img src="{{IMAGE_PATH}}/ai-dynamic-model-kalman-filter-introduction.png" height="" width="" />

- Markov Property
$$
\begin{aligned} p\left(x_{t} \mid x_{1}, \ldots, x_{t-1}, y_{1}, \ldots,
y_{t-1}\right) &=p\left(x_{t} \mid x_{t-1}\right) \\ p\left(y_{t} \mid x_{1},
\ldots, x_{t-1}, x_{t}, y_{1}, \ldots, y_{t-1}\right) &=p\left(y_{t} \mid
x_{t}\right) \end{aligned}
$$

- This model is copying the hidden markov model, it keeps the basic markov
  properties
- Change it's parameters.


For Kalman Filter, we are interested in Linear Dynamic System(LDS), and Gaussian
noises.

- Transition probability: 
$$
p\left(\mathbf{x}_{t} \mid \mathbf{x}_{t-1}\right) \sim \mathcal{N}\left(A
\mathbf{x}_{t-1}+B, Q_{t}\right)
$$

- Measurement probability:
$$
p\left(y_{t} \mid \mathbf{x}_{t}\right) \sim \mathcal{N}\left(H \mathbf{x}_{t},
R_{t}\right)
$$



#### 3. Model Paramters

#### 4. Model Operations
1. Prediction:
$$
p\left(x_{t} \mid \mathbf{y}_{1: t-1}\right)=\int_{x_{t-1}} p\left(x_{t} \mid
x_{t-1}\right) p\left(x_{t-1} \mid \mathbf{y}_{1: t-1}\right)
$$

2. Update:
$$
p\left(x_{t} \mid \mathbf{y}_{1: t}\right)=\frac{p\left(y_{t} \mid x_{t}\right)
p\left(x_{t} \mid \mathbf{y}_{1: t-1}\right)}{\int_{s_{t}} p\left(y_{t} \mid
s_{t}\right) p\left(d s_{t} \mid \mathbf{y}_{1: t-1}\right)}
$$

