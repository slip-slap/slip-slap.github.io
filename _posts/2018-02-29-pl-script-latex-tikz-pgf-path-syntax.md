---
layout: post
title: "Tikz and PGF: Syntax for Path Specification"
keywords: ["Path", "PGF"]
description: ""
category: "PL"
tags: ["latex","script"]
---


#### 1. Introduction
A path is a series of straight and curved line segments. It is specified following a **\path**
command and the specification must follow a special syntax.


#### 2. Grammar

##### 2.1 Path 

1. grammar: **\path<specification>**: the **<specification>** is a long stream of path operations

```latex
\path(0,0)--(1,1); % nothing will drawn in your picture
```
1. the **\path** command does "nothing" with the path, it just "throws it away".
2. an option like **draw** or **fill** must be given somewhere on the path. Commands like **\draw**
   do this implicitly.



##### 2.1 Move-To and Line-To Operation

The **Move-to** Operation normally starts a path a certain point. This does not cause a line
segement to be created, but it specifies the starting point of the next segment.

```latex
\begin{tikzpicture}
\draw (0,0) --(2,0) (0,1) --(2,1);
\end{tikzpicture}
```
1. two move-to operations are specified: (0,0) and (0,1)
2. two line-to operations are --(2,0) and --(2,1)

##### 2.2 Horizontal and Vertical Lines




