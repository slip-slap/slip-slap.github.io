---
layout: post
title: "Latex: Presentation"
keywords: []
description: 
category: "PL"
tags: ["latex"]
---

#### The compatibility between frame and matrix
When **\matrix** command used in a **\begin{frame}** environment
- add the **ampersand replacement=\&** option to your matrix node
- use **\&** as separator



#### How to add reference


```latex
\documentclass{beamer}

\usepackage{biblatex}
\addbibresource{NAS.bib}

\begin{document}

\begin{frame}{}
    \footfullcite{miller1989designing}
\end{frame}

\end{document}
```

#### Reference
1. [tikz matrix undefined control sequence](https://tex.stackexchange.com/questions/208408/tikz-matrix-undefined-control-sequence)
