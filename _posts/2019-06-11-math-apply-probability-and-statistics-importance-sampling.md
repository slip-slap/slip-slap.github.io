---
layout: post
title: "P.A.S.: Importance Sampling"
keywords: ["importance sampling","MCMC"]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### what is the crap of importance sampling ?
1. the concept behind this is pretty simple. Do more sampling in important place.
2. but how to measure the importance of each sampling point.


#### compared with slice sampling

1. importance sampling wasting a lot of time drawing samples that outside of the curve and rejecting it
2. slice sampling without any wasting time on points outside the curve
