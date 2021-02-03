---
layout: post
title: "Latex: Document"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---


```latex
\documentclass{article}
\usepackage[a4paper,margin=0.8in, headsep=1pt]{geometry}

\usepackage{authblk}
\usepackage{fancyhdr}
\pagestyle{fancy}


\title{}
\date{} % commenting out date

\rhead{2021}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.0pt}

\newenvironment{Figure}
  {\par\medskip\noindent\minipage{\linewidth}}
  {\endminipage\par\medskip}

\author{}
\affil{}

\begin{document}
\maketitle
\thispagestyle{fancy} % to get the title page to use the same style as the rest

\end{document}
```

