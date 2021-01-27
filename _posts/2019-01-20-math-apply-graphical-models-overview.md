---
layout: post
title: "G.M.L.: Overview of Learning Graphical Models"
keywords: [] 
description: 
category: "math"
tags: ["apply","G.M.","G.M.L."]
---
{% include JB/setup %}

#### Motivation
1. In some domains, the amount of knowledge required is just too large or the
   expert's time is too valuable. In others, there are simply no experts who
   have sufficient understanding of the domain. In many domains, the properties
   of the distribution change from one application site to another or over time,
   and we cannot expect an expert to sit and redesign the network every few
   weeks.

#### Goals of Learning
1. In practice, the amount of data we have is rarely sufficient to obtain an
   accurate representation of a high-dimensional distribution involving many
   variables. Thus, we have to select $$ \tilde{\mathcal{M}} $$ so as to
   construct the "best" approximation to $$ \mathcal{M}^{*} $$. The notion of
   "best" depends on our goals. Different models will
   generally embody different trade-offs.


#### Model Constraints
1. We may not know the structure, and we have to learn both parameters and
   structure from the data.
2. Even worse, we may not even know the complete set of variables over which the
   distribution $$ \mathcal{P}^{*} $$. In other words, we may only observe some
   subset of the variables in the domain and possibly be unaware of others.
