---
layout: post
title: "Latex: With Chinese"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

### How to Add Chinese 

```tex
\documentclass{article}
\usepackage{xeCJK}
\setCJKmainfont[Path=/System/Library/Fonts/Supplemental/]{Songti.ttc}

\usepackage{tikz}
\usetikzlibrary{calendar}

\begin{document}
\sffamily\scriptsize
\tikz
  \calendar [dates=2022-01-01 to 2022-12-last,
             month list,month label left,month yshift=4.25em]
            if (Sunday) [red!50]
            if (Saturday) [red!50];
\pagebreak;

\renewcommand{\arraystretch}{1.8} % adjust vertical length
\input{11/05}
\end{document}

```

