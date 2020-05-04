---
layout: post
title: "P.G.M.R.: Local Probabilistic Models"
keywords: [""] 
description: ""
category: "math"
tags: ["apply","P.G.M.","P.G.M.R."]
---
{% include JB/setup %}

### Insight
A CPD(conditional probability distribution) needs to speciy a conditional
probability $P(x|pa_X)$ for every assignment of values $pa_X$ and $x$, but it
does not have to do so by listing each such value explicityly. We should view
CPDs not as tables listing all of the conditional probabilities, but rather a
functions that given $pa_x$ and $x$, return the conditional probability
$P(x|pa_x)$


### 2 CPD
#### 2.1 Deterministic CPDs
#### 2.2 Context-Specific CPDs
#### 2.3 Rule CPDs
