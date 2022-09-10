---
layout: post
title: "Latex: Equation"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

#### 1. amsmath Package 
American mathematics society(AMS)

```latex
\usepackage[cmex10]{amsmath}
```
1. If using it, be sure to load this package with the cmex10 option to ensure that only type 1 fonts
   will utilized at all point sizes. Without this option, it is possible that some math symbols,
   particularly those within footnotes, will be rendered in bitmap form which will result in a
   document that can not be IEEE Xplore compliant!

##### 1.1 Display a single equation
To display an eauation, you have to use the equation\* or equation environment,
depending on whether you wnat the equation to be numbered or not.

```latex
\begin{equation}
\label{eu_eqn}
e^{\pi i} + 1 = 0
\end{equation}
```

#### 1.2 Displaying long equations
1. For equations longer than a line use the multline environment, insert a
   double back slash to set a point for the equation to be broken
2. The first part will be aligned to the left
3. The second part will be aligned to the right

```latex
\begin{equation}
	\begin{array}{ll}
		p(x)  = & 3x^6 + 14x^5y + 590x^4y^2 + 19x^3y^3  \\
			    & - 12x^2y^4 - 12xy^5 + 2y^6 - a^3b^3
	\end{array}
\end{equation]
```

#### 1.3 Piecewise function

```latex
\begin{align}
	f(x)  = 
	\begin{cases}
		x+5, & x>0 \\
		x-5, & x<0
	\end{cases}
\end{align}

\begin{equation}
	f(x) = 
	\left \{ 
		\begin{array}{ll}
			x+5, & x>0 \\
			x-5, & x<0
		\end{array}
	\right .
\end{equation}
```
##### 1.3.1 aligned by the equation

```latex
\begin{align}
	y &= (a-x)(b+x) \\
	  &= dx 
\end{align}
```

#### 1.4 Split
#### 1.5 Matrix
1. amsmath provides command to typeset matrices with different delimiters.

```latex
% 1. plain
\begin{matrix}
1 & 2 & 3\\
a & b & c
\end{matrix}

% 2. round bracket
\begin{pmatrix}
1 & 2 & 3\\
a & b & c
\end{pmatrix}

% 3. curly bracket
\begin{Bmatrix}
1 & 2 & 3\\
a & b & c
\end{Bmatrix}

% 4. square bracket
\begin{bmatrix}
1 & 2 & 3\\
a & b & c
\end{bmatrix}

% 5. pipes
\begin{vmatrix}
1 & 2 & 3\\
a & b & c
\end{vmatrix}
```

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

#### Galois
Above tutorial involves many commands, it is difficult to remember all. the
reason is that I haven't get the essence.  You can write any equation with this
following template, the above commands just provide a quick to implement the
essence.

```latex
\begin{equation}
\left( \begin{array}{c}
			1 \\
			0 \\
		\end{array}
\right)
\end{equation}
```

1. What do the left and right do here?
- Make matching parentheses, braches, or other delimiters. Latex makes the
delimiters tall enough to just cover the size of the formula that they enclose.

2. You can notice how similar this command and the table command.


#### Reference
1. [Adjust equation size](https://tex.stackexchange.com/questions/35554/how-can-i-auto-adjust-a-equation-to-appear-in-the-entire-page-scale-to-equatio)
2. [Piecewise function](https://tex.stackexchange.com/questions/246321/how-do-i-align-piecewise-functions/246323)
3. [left and right](https://latexref.xyz/_005cleft-_0026-_005cright.html)

