---
layout: post
title: "Boosting Algorithm"
keywords: ["AdaBoost", "GB"]
description: "neural network"
category: "AI"
tags: ["model" ]
---
{% include JB/setup %}

#### what is the crap of boosting algorithm ?

According to Merriam-Webster, **boost**: means to increase the force, power, or amount of something

**weak learner: better than guessing** <br />
This is basically the only requirement for a weak learner. So long as you can consistently beat random 
guessing.

1. The classic weak learner is a decision tree. By changing the maximum depth of the tree, you can control all 3 factors.
This makes tem incredibly popular for boosting. What you should be using depends on your individual problem. decision tree
is a good starting point.
2. So long as the algorithm supports weighted data instances, any algorithm can be used for boosting. For example,
A professor boosting 5 layer deep neural networks for his work in computational biology.
3. what weak learner you should choose is then a trade off between 3 factors.

The bias of the model. A lower bias is almost always better, but you don't want to pick something what will overfit(boosting can does overfit) <br />
The training time for the weak learner. Generally we want to be able to learn a weak learner quickly, as we are going to build a few hundred of them <br />
The prediction time for our weak learner. If we use a model that has a slow prediction rate, our ensemble of them is going to be a few hundred times slower. <br />





