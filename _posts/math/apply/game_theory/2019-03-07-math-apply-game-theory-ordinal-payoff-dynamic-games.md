---
layout: post
title: "Game Theory: Dynamic Games"
keywords: [""]
description: ""
category: "math"
tags: ["apply","Game Theory"]
---
{% include JB/setup %}

#### Finite Extensive Form
1. A finite exensive form(or frame) with perfect information consists of the following items.
- A finite rooted directed tree.
- A set of players $I = \{1,\cdots, n\}$ and a function that assigns one player to every decision
   node.
- A set of actions A and a function that assigns one action to every directed edge, satisfying the
   restriction that no two edges out of the same node are assigned the same action.
- A set of outcomes $O$ and a function that assigns an outcome to every terminal node.

2. Finite Extensive Game with Perfect Information
A Finite extensive game with perfect information is a finite extensive form with perfect information
together with a ranking $ \succsim i $ of the set of outcomes $O$, for every player $i \in I$.


3. Perfect-recall: this means that if a player takes action a at an information set and later on has
   to move again, then at the later time she remembers that she took action a at that earlier
   information set(because every node she is uncertain about at the later time comes after taking
   action a at that information set). Perfect call can be interpreted as requiring that a player
   always remember what she knew in the past and what actions she herself took in the past.


#### Backward Induction
The backward-induction algorithm is the following procedure for solving a finite perfect-information
game:
1. Select a decision node x whose immediate successors are all marked. Let $i$ be the player who
   moves at $x$, Select a choice that leads to an immediate successor of x with the highest
   payoff(or utility) for Player i(highest among the utilities associated with the immediate
   successors of x). mark x with the payoff vector associated with the node that follows the
   selected choice.
2. Repeat the above step until all the nodes have been marked.










