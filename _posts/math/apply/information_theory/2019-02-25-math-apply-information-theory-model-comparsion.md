---
layout: post
title: "Model Comparsion"
keywords: []
description: ""
category: "math"
tags: ["I.T." ]
---
{% include JB/setup %}


#### Occam's Razor
<img src="{{IMAGE_PATH}}/computer-science-model-comparsion.png" />
1. how many boxes are behind the tree ? Occam's razor advises buy the simplest.
- A theory with mathematical beauty is more likely to be correct than an ugly
  one that fits some experimental data


#### Bayes' Theorem For two levels of inference
1. **Model Fitting**: At the first level of inference, we assume that one model,
   the ith, say is true, and we infer waht the models parameter **w** might be,
   given the data D.
   $$
   P\left(\mathbf{w} | D, \mathcal{H}_{i}\right)=\frac{P\left(D | \mathbf{w},
   \mathcal{H}_{i}\right) P\left(\mathbf{w} | \mathcal{H}_{i}\right)}{P\left(D |
   \mathcal{H}_{i}\right)}
   $$
- The normalizing constant is commonly ignored since it
  is irrelevant to the first level of inference, but it becomes important in the
  second level of inferences, and we name it the evidence for 
  $\mathcal{H}_{i}$

2. **Model Comparsion**: At the second level of inference, we wish to infer
   which model is most plausible given the data.
-  Model comparison is a difficult task because it is not possible simply to
   choose the model that fits the data best:

   

