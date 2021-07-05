---
layout: post
title: "Traditional: Decision Tree Introduction"
keywords: []
description: ""
category: "AI"
tags: ["traditional"]
---
{% include JB/setup %}


#### Model




#### Basic Concept

+ Decision Stump: A Decision Stump is a Decision Tree model that only splits off at one level, therefore the final prediction is based on only one feature.


#### Decision Tree for Classification

Classification and Regression Trees(CART) is to refer to Decision Tree Algorithms, which can be used
to classification and regression.

1. classification: The Gini cost function is used which provides an indication of how pure the nodes are.
where node purity refers to how mixed the training data assigned to each node is.
2. regression: The cost function




#### Decision Tree for Regression 

Similar to decision tree classification, however use MSE(Mean Squared Error) or similar metrics instead of cross-entropy
or Gini impurity to determine splits

<img src="{{IMAGE_PATH}}/decision_tree.png" height="" width="" />


#### Reference
1. [How to Implement The Decision Tree Algorithm From Scratch for Classification](https://machinelearningmastery.com/implement-decision-tree-algorithm-scratch-python/)
2. [using Decision Trees for Regression Problems](https://acadgild.com/blog/using-decision-trees-for-regression-problems)
3. [How to Implement The Decision Tree Algorithm From Scratch for Regression](https://www.kaggle.com/grroverpr/gradient-boosting-simplified/)





