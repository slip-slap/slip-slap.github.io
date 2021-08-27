--- 
layout: post 
title: "C++ Library: Boost Graph Library" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### Vertex and Edge
In the BGL, vertices and edges are manipulated through opaque handles called
*vertex descriptors* and *edge descriptors*.
- The descriptor types for a graph type are always accessible through the
  *graph_traits* class.


```cpp
boost::adjacency_list<>::vertex_descriptor v = add_vertex(G);
std::pair<boost::adjacency_list<>::edge_descriptor, bool> p = add_edge(1,2,G);
std::pair<boost::adjacency_list<>::vertex_iterator, boost::adjacency_list<>::vertex_iterator> p = vertices(G);
```


#### Graph Traversal
The graph abstraction consists of several different kinds of collections:
the vertices and edges for the graph and the out-edges, in-edges, and adjacent
vertices for each vertex.  There are five kinds of graph iterators, one for each
kind of collection:

1.  A *vertex iterator* is used to traverse all the vertices of a graph. The
	value type of a vertex iterator is a vertex descripter.
2.  An *edge iterator* is used to traverse all the edges of a graph. The value
	type of this iterator is an edge descriptor.
