---
layout: post
title: "P.G.M.L.: Structure Learning in Bayesian Networks"
keywords: [] 
description: 
category: "math"
tags: ["apply","P.G.M.L."]
---
{% include JB/setup %}



#### Likelihood Score
1. Drawback:  The maximum likelihood network will exhibit a conditional
   independence only when that independence happnes to hold exactly in the
   empirical distribution.  Due to statistical noise, exact independence almost
   never occurs, and therefore, in almost all cases, the maximum likelihood
   network will be a fully connected one. In other words, the likelihood score
   overfits the training data, learning a model that precisely fits the
   specifics of the empirical distribution in our training set. This model
   therefore fails to generailize well to new data cases: these are sampled from
   the underlying distribution, which is not identical to the empirical
   distribution in our training set.

#### Bayesian Score
$$
P(\mathcal{G} | \mathcal{D})=\frac{P(\mathcal{D} | \mathcal{G}) P(\mathcal{G})}{P(\mathcal{D})}
$$


$$
\operatorname{score}_{B}(\mathcal{G}: \mathcal{D})=\log P(\mathcal{D} |
\mathcal{G})+\log P(\mathcal{G})
$$
