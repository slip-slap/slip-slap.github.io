---
layout: post
title: "N.N.D.: Stability"
keywords: []
description: 
category: "AI"
tags: ["learning","N.N.D."]
---
{% include JB/setup %}

#### Background
1. The output of a recurrent network could converge to a stable point, oscillate,
or perhaps even diverge.
- So our objective is to determine whether a particular set of nonlinear
  equations has points(or trajectories) to which its ouput might converge.

2. Recurrent networks are potentially more powerful than feedforward networks,
   since they are able to recognize and recall temporal, as well as spatial,
   patterns.
- The behavior of these recurrent networks is much more complex than that of
  feedforward networks
- for feedforward networks, the output is constant(for a fixed input) and is a
  function only of the network input. For recurrent networks, however, the
  output of the network is a function of time.
- For a given input and a given initial network ouput, the response of the
  network may converge to a stable output or not.


#### Nonlinear Recurrent Network
<img src="{{IMAGE_PATH}}/AI-learning-nnd-stability.png" />


#### F
You can think of $V(a)$ as a generalized energy function. The concept of the
theorem is that if the energy of a system is continually decreasing($dV(a)/dt$
negative definite), then it will eventually settle at some minimum energy state.
- Lyapunov's insight was to generalize the concept of energy, so that the
  theorem could be applied to systems where the energy is difficult to express
  or has no meaning.
- The theorem only states that if a suitable Lyapunov function $V(a)$ can be
  found, the system is stable. It gives us no information about the stability of
  the system in those situations where we are able to find such a function.

