---
layout: post
title: "G.T.: Message Passing"
keywords: [""]
description: ""
category: "math"
tags: ["discrete","G.T."]
---
{% include JB/setup %}

#### Message-passing rule-set A
#### Message-passing rule-set B

#### Min-sum Algorithm or Viterbi Algorithm

<img src="{{IMAGE_PATH}}/math-discrete-graph-theory-message-passing.png" />
1. Each node can broadcast its cost to its descendants once it knows the costs
   of all its possible predecessors.
2. The cost of **A** is zero, we pass this news on to **H** and **I**., as the
   message passes along each edge in the graph, the cost of that edge is added.
   We find the costs of H and I are 4 and 1 respectively. figure(a)
3. what about **K**, out of the edge **H-K** comes the message that a path of
   cost 5 exists from **A** to **K** via **H**; and from edge **I-K** we learn
   of an alternative path of cost 3 figure(b)
4. The min-sum algorithm sets the cost of **K** equal to the minimum of these,
   and records which was the smallest-cost route into **K** by retaining only
   hte edge **I-K** and pruning away the other edges leading to K, fiugre(c)



#### Galois
1. One reason that graph theory is important is because we can use graph 
   to complete some calculation.
2. Message-passing rule-set A and message-passing rule-set B just make use the
   structure of the graph and do some math.
3. At first, I read the phrase "message-passing rule-set A", I don't know how to
   separate the sentence, it should be like this "message-passing rule" for "set
   A". I just need a lot of time to understand something.


