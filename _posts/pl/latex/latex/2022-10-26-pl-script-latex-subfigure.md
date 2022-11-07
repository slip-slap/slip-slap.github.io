---
layout: post
title: "Latex: Subfigure"
keywords: ["Tikz", "PGF"]
description: 
category: "PL"
tags: ["latex","script"]
---

#### Problem 1: subcaption/subfigure not centered

You have defined your subfigure environments to have a width of .3\textwidth,
but your images are wider than that, so they will stick out on the right side.
This is also the reason the captions are narrow, as they have the same width as
the subfigures. So to fix this, just increase the width. You can use
\columnwidth to make them as wide as the columns.

#### Problem 2: subfigs of a fig on multiple pages
use the following command

```python
\begin{figure}
  \centering 
  \subfloat[][]{...figure code...}% 
  \qquad 
  \subfloat[][]{...figure code...} 
  \caption{Here are the first two figures of a continued figure.}
  \label{fig:cont}
\end{figure}

\begin{figure}
  \ContinuedFloat 
  \centering 
  \subfloat[][]{...figure code...}% 
  \qquad 
  \subfloat[][]{...figure code...} 
  \caption[]{Here are the last two figures of a continued figure.}
  \label{fig:cont}
\end{figure} 
```

#### Problem 3: force figure placement in text
```python
\usepackage{float}

...

\begin{figure}[H]
\centering
\includegraphics{slike/visina8}
\caption{Write some caption here}\label{visina8}
\end{figure}
```



#### Reference
1. [subcaption/subfigure not centered](https://tex.stackexchange.com/questions/128225/subcaption-subfigure-not-centered-and-caption-too-narrow)
2. [subfigs of a fig on multiple
   pages](https://stackoverflow.com/questions/1078370/subfigs-of-a-figure-on-multiple-pages)
3. [force placement of a figure](https://tex.stackexchange.com/questions/8625/force-figure-placement-in-text)
