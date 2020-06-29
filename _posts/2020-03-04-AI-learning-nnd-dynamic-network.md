---
layout: post
title: "N.N.D.: Dynamic Network"
keywords: []
description: ""
category: "AI"
tags: ["learning","N.N.D."]
---
{% include JB/setup %}



<img src="{{IMAGE_PATH}}/AI-neural-network-design-dynamic-network.png" />

1. A set of weight matrices that come into that layer(which may connect from
   other layers or from external inputs)

2. Any tapped delay lines(represented by $Dl_{m,l}$ or $DI_{m,l}$) that appear
   at the input of a set of weight matrices(Any set of weight matrices can be
   preceded by a TDL. For example, Layer 1 in the figure contains the weight 
   $\textbf{LW}^{1,3}$ and the corresponding TDL) 
3. A bias vector
4. A summing junction 
5. A transfer function

