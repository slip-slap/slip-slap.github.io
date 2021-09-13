---
layout: post
title: "N.N.D.: Radial Basis Network"
keywords: []
description: ""
category: "Simplex"
tags: ["N.N.D."]
---
{% include JB/setup %}


#### Architecture
<img src="{{IMAGE_PATH}}/AI-neural-network-design-rbf-network.png" />


#### With Two Layer Perceptron Network
1. In layer 1 of the RBF network, instead of performing an inner product
   operation between the weights and input, we calculate the distance between
   then input vector and the rows of the weight matrix.
2. Second, instead of adding the bias, we multiply by the bias





