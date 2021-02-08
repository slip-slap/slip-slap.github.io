---
layout: post
title: "G.T.: Exact Marginalization in Trellises" 
keywords: [""]
description: ""
category: "math"
tags: ["apply"]
---
{% include JB/setup %}

#### Motivation
Inferences can be conducted most efficiently by message-passing algorithms,
   which take advantage of the graphical structure of the problem to avoid
   unnecessary duplication of computations.
- If you can't understand, just read it one more time.

#### Definition
1. Trellis: A trellis is a graph consisting of nodes and edges. The nodes are
   grouped into vertical slices called times, and the times are ordered such
   that each edge connects a node in one time to a node in a neighbouring time.
   Every edge is labelled with a symbol.
   - The leftmost and rightmost states contain only one node. Apart from these
     two extreme nodes, all nodes in the trellis have at least one edge
     connecting leftwards and at least one connecting rightwards.

<img
src="{{IMAGE_PATH}}/math-apply-graph-theory-exact-marginalization-in-trellises.png" />
