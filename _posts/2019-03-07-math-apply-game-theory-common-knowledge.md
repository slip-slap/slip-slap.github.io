---
layout: post
title: "Game Theory: Common Knowledges"
keywords: [""]
description: ""
category: "math"
tags: ["apply","Game Theory"]
---
{% include JB/setup %}

#### Definition
1. Let $W$ be a finite set of states, where each state is to be understood as a complete specification
of the relevant facts about the world. An information partition is a partition $
\mathscr{I}
$ of $W$;
- The elements of the partition are called informations sets. For every $w \in W$ we denote by $I(w)$ the information set that contains state $w$.


2. Let $W$ be a set of states. We will call the subsets of W events. Let $\mathscr{I}$ be a
   partition of W, E an event and $w \in W$ a state. We say that at $w$ the agent knows E if and
   only if the information set to which $w$ belongs is contained in E.

3. We can define a knowledge operator K on events that, given as inpu any event E, produces as
   output the event $KE$ defined as the set of states at which the agent knows $E$.

