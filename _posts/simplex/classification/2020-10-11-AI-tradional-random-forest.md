---
layout: post
title: "Traditional: Random Forest"
keywords: []
description: 
category: "Simplex"
tags: ["traditional"]
---
{% include JB/setup %}

#### what is the crap of random forest ?

The random forest combines hundreds or thousands of decision trees, **trains each one on a slightly different set 
of the observations**, splitting nodes in each tree considering a limited number of features. The final predictions 
of the random forest are make by **averaging** the predictions of each individual tree.

#### How does this idea come out?

You have to decide whether Tesla stock will go up and you have access to a dozen analysts who have no prior knowledge
about the company. Each analyst has low bias because they don't come in with any assumptions, and is allowed to learn 
from news reports. <br />

But each individual analyst has high variance and would come up with drastically different predictions if given a 
different training set of reports.<br />

The solution is to not rely on any one individual, but pool the votes of each analyst. Furthermore, like in a random
forest, allow each analyst access to only a section of the reports and hope the effects of the noisy information will
be cancelled out by the sampling. In real life, we rely on multiple sources (never trust a solitary Amazon review),
and therefore, not only is a decision tree intuitive, but so is the idea of combining them in a random forest.


#### Reference
1. [Explanation of the Random Forest](https://towardsdatascience.com/an-implementation-and-explanation-of-the-random-forest-in-python-77bf308a9b76)
