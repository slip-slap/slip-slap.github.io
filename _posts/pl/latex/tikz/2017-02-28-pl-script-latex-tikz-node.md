---
layout: post
title: "Tikz: Node"
keywords: []
description: ""
category: "PL"
tags: ["latex","script"]
---

#### Introduction
1. A node is a small part of a picture
- A node of shape **circle** will be drawn as cricle; a node of shape **rectangle** as a rectangle
- A node may also contain some text
- A node can get a name for later reference


2. Code Example

```latex
\begin{tikzpicture}
\path ( 0,2) node [shape=circle,draw] {}
( 0,1) node [shape=circle,draw] {}
( 0,0) node [shape=circle,draw] {}
( 1,1) node [shape=rectangle,draw] {}
(-1,1) node [shape=rectangle,draw] {};
\end{tikzpicture}
```

The code **(0,2) node [shape=circle, draw] {}** means the following: "in the main path, add a
move-to to the coordinate (0,2). Then, temporarily suspend the construction of the main path while
the node is build. This node will be a circle around an empty text. This circle is to be drawn, but
not filled or otherwise used"

3. more simple grammar
- The **\node** command is an abbreviation for **\path node**

```latex
\begin{tikzpicture}
\node at ( 0,2) [circle,draw] {};
\node at ( 0,1) [circle,draw] {};
\node at ( 0,0) [circle,draw] {};
\node at ( 1,1) [rectangle,draw] {};
\node at (-1,1) [rectangle,draw] {};
\end{tikzpicture}
```


#### 2. Using Styles

```latex
\tikzstyle{place}=[circle,draw=blue!50,fill=blue!20,thick]
\tikzstyle{transition}=[rectangle,draw=black!50,fill=black!20,thick]
\begin{tikzpicture}
\node at ( 0,2) [place] {};
\node at ( 0,1) [place] {};
\node at ( 0,0) [place] {};
\node at ( 1,1) [transition] {};
\node at (-1,1) [transition] {};
\end{tikzpicture}
```



