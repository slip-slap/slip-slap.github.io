---
layout: post
title: "TOC: Finite Automata"
keywords: []
description: 
category: "CS" 
tags: ["TOC"]
---
{% include JB/setup %}

#### A
1. Symbol: a, b, c, 0, 1, 2, 3
2. Alphabet: $\sigma$ collection of symbols, {a,b}
3. String: sequence of symbols
4. Language: set of strings

#### Finite Automata
consists of five entry tuples $(Q, \sigma, q_0, F, \sigma)$
1. $Q$: set of all states
2. $\sigma$: inputs
3. $q_0$: start state/initial state
4. $F$: set of final states
5. $\delta$: transition function from $Q\time \sigma \rightarrow Q$


#### C
1. Finite Automata with ouput
- Moore Machine
- Mealy Machine

2. Finite Automata without ouput
- DFA
- NFA
- $\epsilon - NFA$


#### Mealy Machine
Mealy Machine consists of six element tuple $(Q, \sigma, \Delta, \delta, \lambda, q_0)$
- $Q$: Finite set of states
- $\sigma$: finite non-empty set of input alphabets
- $\Delta$: the set of ouput alphabets
- $\delta$: transition function: $Q \times \sigma \rightarrow Q$
- $\lambda$: output function: $\sigma \times Q \rightarrow \Delta$
- $q_0$: Initial state
