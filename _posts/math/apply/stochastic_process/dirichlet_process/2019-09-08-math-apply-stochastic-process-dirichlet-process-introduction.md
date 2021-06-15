---
layout: post
title: "D.P.: Introduction"
keywords: []
description: 
category: "math"
tags: ["apply","S.P."]
---
{% include JB/setup %}


#### Galois
1. Stochastic Process is a collection of random variables indexed by time, this
   is the formal definition of stochastic process
2. Given the $DP(\alpha, H(0))$, a point is generate from this thing, and this
   point itself is a random variable, so we call this thing $DP(\alpha, H(0))$ 
   Dirichlet Process. Because it meet the definition of a process.


```python
import numpy as np
import matplotlib.pyplot as plt
import collections
from scipy.stats import norm

def simulation_dirichilet(alpha,sampling_number):
    
    # initial interval [1]
    initial_interval = [1]
    first_sample = norm.rvs()
    corresponding_distinct_sample= [first_sample]
    sample = [first_sample]

    for i in range(sampling_number):
        #generate random number x ~ U[0,1]
        uniform_sample = np.random.uniform()
        for i in range(len(initial_interval)):
            if uniform_sample < initial_interval[i]:
                dirichilet_sample = norm.rvs()
                sample.append(dirichilet_sample)
                if dirichilet_sample not in corresponding_distinct_sample:
                   corresponding_distinct_sample.append(dirichilet_sample) 
                break
            if uniform_sample > initial_interval[i] and \
                                          uniform_sample < initial_interval[i+1]:
                sample.append(corresponding_distinct_sample[i])
                break
        initial_interval = update_interval(corresponding_distinct_sample, sample, alpha)
    return sample
        
def update_interval(corresponding_distinct_sample,sample,alpha):
    if(len(sample) < 1):
        print("incorrect input")
        return 
    interval=[]
    first_interval = np.divide(alpha, alpha + len(sample) - 1)
    interval.append(first_interval)

    for i in range(len(corresponding_distinct_sample)):
        number_of_sample  = sample.count(corresponding_distinct_sample[i]) 
        temp_interval = np.divide(number_of_sample, alpha + len(sample) - 1)
        interval.append(temp_interval + interval[-1])
    return interval
        
if __name__ == "__main__":
    result = simulation_dirichilet(2, 20)
    print(result)
    print(collections.Counter(result))

```



#### Reference
1. [Dirichlet process](https://en.wikipedia.org/wiki/Dirichlet_process#Formal_definition)
