---
layout: post
title: "TOC: NFA"
keywords: []
description: 
category: "CS" 
tags: ["TOC"]
---
{% include JB/setup %}


$(Q,\sigma,q_0,F,\delta)$
1. $Q$: set of all states
2. $\sigma$: inputs
3. $q_0$: start state/initial state
4. $F$: set of final states
5. $\delta$: transition function from $Q \times \sigma$ to $2^Q$
- It can go nowhere, denoted by $\phi$


#### Property
1. In NFA, given the current state, there could be multiple next states
2. The next state could be chosen at random
3. All the next states may be chosen in parallel
4. It can accept empty string $\epsilon$.
