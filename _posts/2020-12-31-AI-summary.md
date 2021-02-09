---
layout: post
title: "AI: summary"
keywords: []
description: ""
category: "AI"
tags: ["summary"]
---
{% include JB/setup %}


####  1. Definition
1. What does a researcher do?
- We build models, explain the past, predict the future.
2. What does AI do?
- We build models of thinking
- Algorithm enabled By constraints exposed by representation that models
  targeted at thinking, perception and action


##### 1.1 About a Model
1. logistic regresstion, support vector machine, neural network, hidden markov
   chain, all these things are models. 
2. What consists a model? this is the essence of a model?
- When we try to build a model, what we need to do? we need learn something.
- For neural network, we learn the parameters of neuron.
- For support vector machine, we learn the vector that separate everything.
- For hidden markov chain, we learn the parameters of the distribution.

3. A model is consists of two parts: the architecture and it's parameters
- Coming up with an new architecture is tricky, it needs idea.
- what we need do is how to learn these parameters.

4. **Nothing new about a model, just some architecture and parameters**



##### 1.2 simple and trival
1. simple: maybe powerful, simple ideas are often most powerful.
2. trivial: less powerful

#### 2. AI, ML and DL

##### 2.1 AI
1. AI: first coined in 1956 by John McCarthy, **AI involues machings that can
perform tasks that are characteristic of human intelligence.**, while this is
rather general, it includes things like planning, understanding language,
recognizing objects and sounds, learning, and problem-solving.

##### 2.2 ML
1. ML: First coined in 1959 by Arthur Samuel, defining it as, "the ability to learn
without using being explicitly programmed." 
Machine Learning is simply a way of achieving AI.
- the term "explicitly programmed", how to understand, for example, in tradional
  image recognition, if you want to identify an apple, the first step is check
  the shape of the target, maybe you need create a convex hull surround the
  target, and based on the convex hull, you decided it's an apple or not.
- But with machine learning, you don't need to do like that, you just let the
  computer to find the pattern.


2. ML is a model, when we talk about a model, it needs a couple of components.
   For machine learning.

<img src="{{IMAGE_PATH}}/AI-summary-model.png" height="" width="" />



##### 2.3 DL
DL: Deep learning is one of many approaches to machine learning. other
approaches include decision tree learning, clustering, reinforcement learning,
and Bayesian networks.

#### 4. Galios
1. AI and ML: ML is one possible route to realize AI 
- Chess playing: traditional AI: game tree
- Chess playing: ML for AI: 'learning from board data'
2. ML and statistics: 
- ML use data to compute hypothesis g that approximates target f
- Statistics use data to make inference about an unknown process
- statistics can be used to achieve ML
- traditional statistics also focus on provable results with math assumptions,
  can care less about computation.

3. ML and Data Mining:
- Data Mining: use huge data to find property that is interesting.
- if 'interesting property' same as 'hypothesis that approximate target' 
- if 'interesting property' related to  'hypothesis that approximate target' 
- traditional DM also focused on efficient computation in large database.


#### 5. Reference
1. [The Difference Between Artificial Intelligence, Machine Learning, and Deep Learning](https://medium.com/iotforall/the-difference-between-artificial-intelligence-machine-learning-and-deep-learning-3aa67bff5991)


