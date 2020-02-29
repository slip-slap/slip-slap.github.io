---
layout: post
title: "Gradient Boosting Algorithm(GBM)"
keywords: ["GBM","Bagging","Boosting"]
description: "introduction"
category: "AI"
tags: ["algorithm"]
---
{% include JB/setup %}


### Brief Description for Ensemble, Bagging and Boosting

An ensemble is just a collection of predictors which come together(e.g. mean of all predictions)
to give a final prediction. The reason we use ensembles is that many different predictors trying to
predict same target variable will perform a better job than any single predictor alone. <br />

Ensembling techiques are further classified into Bagging and Boosting.

1. Bagging is a simple ensembling techique in which we build many independent predictors/models/learners
and combine them using some model averaging techiques.

2. Boosting is an ensemble techique in which the predictors are not made independently, but sequentially.


### what is the crap of gradient boosting?

Gradient Boosting: use additive modeling to gradually nudge an approximate mode towards a really good model,
by adding simple submodels to a composite model. <br />
This is crap, what is tha crap of **additive modeling ?**
we have to answer the question,

#### what is the crap of additive modeling <2>

Defition: Adding up a bunch of subfunctions to create a composite function that models some data points 
is then called additive modeling.

#### An introduction to boosted regression

**Boosting** is a loosely-defined strategy that combines multiple simple models into a single composite model.
The idea is that, as we introduce more simple models, the overall model becomes a stronger and stronger predictor.
In boosting terminology, the simple models are called weak models or weak learners. <br />

In practice, we choose the number of stages, M, as a hyperparameter of the overall model. Allowing M to grow arbitrarily
increases the risk of overfitting.

$$
F_{m}(\mathbf{x})=F_{m-1}(\mathbf{x})+f_{m}(\mathbf{x})
$$

Boosting itself does not specify how to choose the weak learners. Boosting does not even specify the form of the 
$$
f_{m}(\mathrm{x})
$$ models, but the form of the weak model dictates the form of the meta-model. <br />
For example, if all weak models are linear models, then the resulting meta-model is a simple linear model. <br />
If we use tiny regression trees  as the weak models, the result is a forest of trees whose predictions are added together.

#### The intuition behind gradient boosting
It might be helpful to think of this boosting approach as a golfer initially whacking a golf ball towards the hole at y
but only getting as far as $$
f_{0}(\mathbf{x})
$$. 

The golfer then repeatedly taps the ball more softly, working the ball towards the hole, after reassessing direction and distance
to the hole at each stage. The following diagram illustrates 5 strokes getting to the hole, y, including two strokes,
$$
\Delta_{2} \text { and } \Delta_{3}
$$, that overshoot the hole

<img src="{{IMAGE_PATH}}/GBM-golfer.png" height="" width="" />


#### The Difference Between Random Forest and Boosted Trees
Common: Random Forest and Boosted Trees are really the same models;
Difference: The difference is how we train them


### Reference

1. [Gradient Boosting from scratch](https://medium.com/mlreview/gradient-boosting-from-scratch-1e317ae4587d)
2. [An introduction to additive modeling](https://explained.ai/gradient-boosting/L2-loss.html)
