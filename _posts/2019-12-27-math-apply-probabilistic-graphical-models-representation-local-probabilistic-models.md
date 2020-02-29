---
layout: post
title: "P.G.M.: Local Probabilistic Models"
keywords: [""] 
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Insight
A CPD needs to speciy a conditional probability $P(x|pa_X)$ for every assignment
of values $pa_X$ and $x$, but it does not have to do so by listing each such
value explicityly. We should view CPDs not as tables listing all of the
conditional probabilities, but rather a functions that given $pa_x$ and $x$,
return the conditional probability $P(x|pa_x)$
