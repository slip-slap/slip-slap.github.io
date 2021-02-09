---
layout: post
title: "Latex: Error"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

#### 1. failed to arrange your figure properly
1. If you draw help lines in your code, don't forgot to remove the help line, or
   help grid.

##### 1.1  undefine

1. tikz code can't surrounded by frame code which a keyword from beamer.

```latex
\documentclass{beamer}
\usepackage{graphicx,multicol,lipsum,caption,authblk}
\usepackage{amsmath,booktabs,verbatim,tikz}
\usetikzlibrary{shapes.geometric, arrows,positioning,matrix,calc}
\usepackage{mathptmx}

\begin{document}

\begin{frame}
\begin{tikzpicture}
[
plain/.style={
  draw=none,
  fill=none,
  },
  remember picture,
net/.style={
  matrix of nodes,
  nodes={
    draw,
    circle,
    inner sep=7.5pt
    },
  nodes in empty cells,
  column sep=-10.5pt,
  row sep=1.8cm
  }
]
%\draw[help lines] (-3cm,-6cm) grid (6cm,3cm);
\matrix[net] (mat)
{
              & |[plain]| &           & |[plain]|  &           & |[plain]| &           &  |[plain]|      &               \\
    |[plain]| &           & |[plain]| &            & |[plain]| &           & |[plain]| &                 & |[plain]|     \\ 
    |[plain]| & |[plain]| & |[plain]| & |[plain]|  &           & |[plain]| & |[plain]| &  |[plain]|      & |[plain]|     \\ 
  };

  \node at ($(mat-1-1.west)+(-16pt,0)$) {Input: };
  \node at ($(mat-2-2.west)+(-24pt,0)$) {Hidden:};
  \node at ($(mat-3-2.west)+(-24pt,0)$) {Output:};

\end{tikzpicture}

\end{frame}

\end{document}
```

#### 2. Amsmath Error
1. Paragraph ended before **\align** was complete for following code.
- Empty lines are not allowed inside a display math environment
- **align** is already a math environment, so you shouldn't use \\ **[** \\**]**
  inside it.


#### 3. Reference
1. [Paragraph ended before \aligh was complete](https://tex.stackexchange.com/questions/203020/paragraph-ended-before-align-was-complete)
