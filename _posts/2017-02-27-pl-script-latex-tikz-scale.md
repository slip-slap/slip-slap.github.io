---
layout: post
title: "Tikz: Scale"
keywords: ["Tikz"]
description: "latex"
category: "PL"
tags: ["latex","script"]
---

#### Motivation
1. There is nothing special with an image, for latex, an image is just normal text of big size.
We need to scale figure to fit the page width.

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


#### Example

```latex
\begin{tikzpicture}
[ p/.style={ draw=none, fill=none, }, remember picture, 
  net/.style={ matrix of nodes, nodes={ draw, circle, inner sep=7.5pt },
  nodes in empty cells,
  column sep=-10.5pt,
  row sep=0.8cm
  }
]
	\useasboundingbox (-1.5,-1.1) rectangle (1.5,2);
	\scope[transform canvas={scale=0.6}]
		%\draw[help lines] (-3cm,-6cm) grid (6cm,3cm);
		\matrix[net] (mat)
		{
			  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  &
				|[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]| &  & |[p]|    \\
		 |[p]| & |[p]| & |[p]|   & |[p]|  &  |[p]| &  |[p]| & |[p]| &|[p]|  &   & |[p]| &      & |[p]| &  &  |[p]| &  &
		 |[p]| &       & |[p]| &   & |[p]|   &  & |[p]| &       &|[p]| & |[p]| & |[p]| & |[p]|
			   & |[p]| &  |[p]|   &  |[p]| &  |[p]| & |[p]| & |[p]|  \\ 
		 |[p]| &  |[p]| & |[p]|  &  |[p]| & |[p]|  &  |[p]| &  |[p]| &  |[p]| & |[p]| & |[p]| & |[p]| &       & |[p]|
			   &  |[p]| & |[p]|  &  |[p]| &        &  |[p]| &  |[p]| &  |[p]| & |[p]| & |[p]| & |[p]| & |[p]| &     |[p]|
			   &  |[p]| & |[p]|  &  |[p]| & |[p]|  &  |[p]| &  |[p]| &  |[p]| \\ 
		  };
		  \node at (mat-1-1.base)   {$i_1$};    \node at (mat-1-3.base)   {$i_2$}; 
		  \node at (mat-1-5.base)   {$i_3$};    \node at (mat-1-7.base)   {$i_4$}; 
		  \node at (mat-1-9.base)   {$i_5$};    \node at (mat-1-11.base)  {$i_6$}; 
		  \node at (mat-1-13.base)  {$i_7$};    \node at (mat-1-15.base)  {$i_8$}; 
		  \node at (mat-1-17.base)  {$i_9$};    \node at (mat-1-17.base)  {$i_9$};
		  \node at (mat-1-19.base)  {$i_{10}$}; \node at (mat-1-21.base)  {$i_{11}$};
		  \node at (mat-1-23.base)  {$i_{12}$}; \node at (mat-1-25.base)  {$i_{13}$};
		  \node at (mat-1-27.base)  {$i_{14}$}; \node at (mat-1-29.base)  {$i_{15}$};
		  \node at (mat-1-31.base)  {$i_{16}$};

		  \node at (mat-2-9.base)  {$h_1$};
		  \node at (mat-2-11.base) {$h_2$};
		  \node at (mat-2-13.base) {$h_3$};
		  \node at (mat-2-15.base) {$h_4$};
		  \node at (mat-2-17.base) {$h_5$};
		  \node at (mat-2-19.base) {$h_6$};
		  \node at (mat-2-21.base) {$h_7$};
		  \node at (mat-2-23.base) {$h_8$};

		 \foreach \a in {1,3,5,7,9,11,31}{
				\draw[->,dotted] (mat-1-\a.south) -- (mat-2-9.north);
			 }
		 \foreach \a in {5,7,11,13,19,25,27}{
				\draw[->,dotted] (mat-1-\a.south) -- (mat-2-11.north);
			 }
		 \foreach \a in {27,29,31}{
				\draw[->,dashed] (mat-1-\a.south) -- (mat-2-13.north);
			 }
		 \foreach \a in {11,19,27,31}{
				\draw[->,dashed] (mat-1-\a.south) -- (mat-2-15.north);
			 }
		 \foreach \a in {15,19,23}{
				\draw[->,dashed] (mat-1-\a.south) -- (mat-2-17.north);
			 }
		 \foreach \a in {3,5,7}{
				\draw[->,dashed] (mat-1-\a.south) -- (mat-2-19.north);
			 }
		 \foreach \a in {17,19,21,23}{
				\draw[->,dashed] (mat-1-\a.south) -- (mat-2-21.north);
			 }
		 \foreach \a in {21,23,25,27,29}{
				\draw[->,dashed] (mat-1-\a.south) -- (mat-2-23.north);
			 }

		 \foreach \c in {9,11,13,15,17,19,21,23}{
			\foreach \d in {12,17}{
				\draw[->] (mat-2-\c.south) -- (mat-3-\d.north);
			}
		 }
	\endscope
\end{tikzpicture}



```



#### Reference
1. [Tikz scale](https://tex.stackexchange.com/questions/26846/how-to-scale-a-tikzpicture-including-texts)
2. [canvas and the caption](https://tex.stackexchange.com/questions/108380/why-does-transform-canvas-change-where-the-caption-is)
