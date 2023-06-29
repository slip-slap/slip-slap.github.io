---
layout: post
title: "Numpy for machine learning"
keywords: ["pandas"]
description: ""
category: "PL"
tags: ["python"]
---

```
import numpy as np

x = np.linspace(-np.pi,np.pi,200)
y = 1/(1+np.exp(2*x + 3))

w = np.random.rand()
b = np.random.rand()
for i in range(1000):
    y_pred = 1/(1+np.exp(w*x + b))
    loss = np.square(y - y_pred).sum()
    print(loss)
    grad_y_pred = 2 * (y - y_pred)
    grad_sigma = y_pred*(1-y_pred)
    grad_w = (grad_y_pred*grad_sigma*x).sum()
    grad_b = (grad_y_pred*grad_sigma).sum()
    w = w - 0.01 * grad_w
    b = b - 0.01 * grad_b
print(w,b)
```
