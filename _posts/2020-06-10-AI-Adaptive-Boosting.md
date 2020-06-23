---
layout: post
title: "Adaptive Boosting"
keywords: []
description: ""
category: "AI"
tags: []
---
{% include JB/setup %}

#### what the crap of Adaboost ?

It focuses on classification problems and aims to convert a set of weak
classifiers into a strong one.

$$
F(x)=\operatorname{sign}\left(\sum_{m=1}^{M} \theta_{m} f_{m}(x)\right)
$$

where f\_m stands for the m\_th weak classifier and theta\_m is the
corresponding weight. <br /> It is exactly the weighted combination of M weak
classifiers.


#### Train
For any classifier with accuracy higher than 50%, the weight is positive. The
more accurate the classifier, the larger the weight. While for the classifier
with less than 50% accuracy, the weights is negative. It means that we combine
its prediction by flipping the sign. <br />

For example, we can turn a classifier with 40% accuracy into 60% accuracy by
flipping the sign of the prediction.  Thus even the classifier performs worse
than random guessing, it still contributes to the final prediction.  We only
don't want any classifier with exac 50% accuracy, which doesn't add any
information and thus contributes nothing to the final prediction.

#### A Statistical View of Boosting
In the view of a statistist, AdaBoost was actually minimizing the exponential
loss function

