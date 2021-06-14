---
layout: post
title: "Statistics: MCMC Sampling"
keywords: []
description: ""
category: "math"
tags: ["apply","statistics","P.A.S."]
---
{% include JB/setup %}

**Question:** How to sample from a distribution in which only the ratio of the
probability of two variables is clear, without any other knowledge about the
potential distribution at all. 




**Idea:** MCMC generates samples from the posterior distribution by constructing
a reversible Markov-chain that has as its equilibrim distribution the target
posterior distribution.





```python
import numpy as np
import matplotlib.pyplot as plt

def sample_from_distribution(number, current, mu, sigma):
    sample_trace  = []
    sample_trace.append(current)
    
    sampling_counter = 0
    while(sampling_counter < number):
        proposal = (np.random.random() - 0.5) * 1000 # Monte Carlo
        ratio = np.divide(np.exp(-0.5 * (proposal - mu) * (proposal - mu)/(2*sigma*sigma)),
                np.exp(-0.5 * (current- mu) * (current- mu)/(2*sigma*sigma)) )
        
        if np.random.random() < ratio:
            sample_trace.append(proposal)
            current = proposal # markov chain
        sampling_counter = sampling_counter + 1
    return sample_trace

sampling = sample_from_distribution(50000, 0.1, 200, 100)
plt.hist(sampling)
plt.show()
```
