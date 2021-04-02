---
layout: post
title: "Tikz and PGF: Scale a tikzpicture"
keywords: ["Tikz", "PGF"]
description: "latex"
category: "PL"
tags: ["latex","script"]
---


#### 1. Scale a tikzpicture

```latex
\begin{tikzpicture}[thick, scale=0.6]
	\draw [dashed] (1,12) -- (11, 12);
	\node[above] at (4,11) {1};
\end{tikzpicture}
```


##### 1.1 Attention
There are a few things that scaling doesn't affect;
- The most noticeable are nodes sizes and line width
- In a simple picture, it isn't hard to adjust the line width accordingly but the nodes can be difficult.
- It is possible to force a node to be scaled: put the scale option directly in the node's attributes.

```latex
\node[above, scale=0.6] at(4,11) {true};
```
- This is annoying to put on every node
- we have the **every node** option

```latex
\begin{tikzpicture}[thick, scale=0.6, every node/.style={scale=0.6}]
```

##### 1.2 global scale key

```latex
\tikzset{global scale/.style}{
		scale=#1, 
		every node/.style={scale=#1}
	}
```



#### Reference
1. [Tikz scale](https://tex.stackexchange.com/questions/26846/how-to-scale-a-tikzpicture-including-texts)
