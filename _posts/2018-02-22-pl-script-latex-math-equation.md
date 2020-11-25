---
layout: post
title: "Latex: Math Equation"
keywords: ["Tikz", "PGF"]
description: 
category: "PL"
tags: ["latex","script"]
---

#### 1. amsmath Package 

```latex
\usepackage[cmex10]{amsmath}
```
1. If using it, be sure to load this package with the cmex10 option to ensure that only type 1 fonts
   will utilized at all point sizes. Without this option, it is possible that some math symbols,
   particularly those within footnotes, will be rendered in bitmap form which will result in a
   document that can not be IEEE Xplore compliant!


#### 2. mdwmath Package 
1.  mdwmath.sty which is used to format equations


#### 3. graphicx Package
graphicx offers a **\resizebox** command to adjust an equation.
1. the first parameter .35 determines how much of the width you'd like to take up.
2. the ! as the second argument will preserve the aspect ratio.

```latex
\begin{equation}
	\begin{array}{l}
		\resizebox{.35\textwidth}{!}{$\bar{Q}_{11}=Q_{11} c^{4}+Q_{22} s^{4}+2\left(Q_{12}+2
		Q_{66}\right) s^{2} c^{2}$} \\

		\resizebox{.35\textwidth}{!}{$\bar{Q}_{12}=\left(Q_{11}+Q_{22}-4 Q_{66}\right) s^{2}
		c^{2}+Q_{12}\left(c^{4}+s^{2}\right)$} \\

		\resizebox{.35\textwidth}{!}{$\bar{Q}_{22}=Q_{11} s^{4}+Q_{22} c^{4}+2\left(Q_{12}+2
		Q_{66}\right) s^{2} c^{2}$} \\

		\resizebox{.4\textwidth}{!}{$\bar{Q}_{16}=\left(Q_{11}-Q_{12}-2 Q_{66}\right) c^{3} s-\left(Q_{22}-Q_{12}-2Q_{66}\right) s^{3} c$}
		 \\ 
		\resizebox{.4\textwidth}{!}{$\bar{Q}_{26}=\left(Q_{11}-Q_{12}-2 Q_{66}\right) c s^{3}-\left(Q_{22}-Q_{12}-2 Q_{66}\right)c^{3} s$}
		 \\ 
	\resizebox{.4\textwidth}{!}	{$\bar{Q}_{66}=\left(Q_{11}+Q_{22}-2 Q_{12}-2 Q_{66}\right)
	s^{2}c^{2}+Q_{66}\left(s^{4}+c^{4}\right)$}\\
	\end{array}
\end{equation}
```


#### Reference
1. [Adjust equation size](https://tex.stackexchange.com/questions/35554/how-can-i-auto-adjust-a-equation-to-appear-in-the-entire-page-scale-to-equatio)

