---
layout: post
title: "TOC: DFA"
keywords: []
description: 
category: "CS" 
tags: ["TOC"]
---
{% include JB/setup %}


#### A
$(Q,\sigma,q_0,F,\delta)$
1. $Q$: set of all states
2. $\sigma$: inputs
3. $q_0$: start state/initial state
4. $F$: set of final states
5. $\delta$: transition function from $Q$ to $Q$

#### Property
1. In DFA, given the current state we know what the next state will be
2. It has only one unique next state
3. It has no choices or randomness
4. It is simple and easy to design


#### Minimization of DFA
Minimization of DFA is required to obtain the minimal version of any DFA which consists of the
minimum number of states possible

1. Two states 'A' and 'B' are said to be equivalent if, where 'X' is any input string.
- $\delta (A,X) \rightarrow F$ and $\delta (B,X) \rightarrow F$
- $\delta (A,X) \rightarrow F$ and $\delta (B,X) \rightarrow F$
