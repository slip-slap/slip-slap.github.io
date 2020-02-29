---
layout: post
title: "P.A.S.: Optimal Inferences"
keywords: ["probabiltiy"] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Introduction
With both the likelihood and the posterior, however, the infereces were derived
largely based on intuition. For example, when we had a characteristic of
interest $\psi(\theta)$, there was nothing in the theory that forced us to
choose a particular estimator, confidence or credible interval, or testing
procedure.

#### Optimal Inferences
One attempt to resolve this issue is to introduce a performance measure on
inferences and then choose an inference that does best with respect to this
measure. For example, we might choose to measure the performance of estimators
by their mean squared error(MSE) and then try to obtain an estimator that had
the smallest possible MSE. This is the **optimality approach** to inference. <br
/>
Sometimes the performance measure we use can be considered to be based on what
is called a loss function. **Loss functions** form the basis for yet another
approach to statistical inference called **decision theory**. While it is not
always the case that a performance measure is based on a loss function, this
holds in some of the most important problems in statistical inference.

