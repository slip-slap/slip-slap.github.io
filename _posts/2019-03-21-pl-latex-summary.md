---
layout: post
title: "Latex: Summary"
keywords: []
description: ""
category: "PL"
tags: ["latex","summary"]
---
{% include JB/setup %}



#### 



### 最简单的Tex代码 
```latex
\documentclass[11pt]{article}
\begin{document}
\end{document}
```

there are two ways to get a line break
type two backslashes
a blank line

### 图形绘制工具Tikz



#### Basic drawing

```python
\documentclass[11pt]{article}
\usepackage{tikz}

\begin{document}

\begin{tikzpicture}

\draw (0,0) parabola (4,4);

\end{tikzpicture}


\end{document}
```

#### Creating Flowcharts

+ load up the tikz package
```python
\usepackage{tikz}
\usetikzlibrary{shapes.geometric, arrows}
```
+ define basic components of a flowchart 

```python
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=orange!30]
\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm
\tikzstyle{arrow} = [thick,->,>=stealth]
```
+ to build our flowchart, we need use \tikzpicture environment

```python
\begin{tikzpicture}[node distance=2cm]
\node (pro1) [process, below of=in1] {Process 1};
\node (dec1) [decision, below of=pro1] {Decision 1};
\end{tikzpicture}
```

+ build Arrow

```python
\draw [arrow] (pro1) -- (dec1);
\draw [arrow] (dec1) -- (pro2a);
\draw [arrow] (dec1) -- (pro2b);
```
#### Creating Mind Maps
<hr />
### 参考内容 <br /> 
[LaTeX Graphics using TikZ tutorial](https://www.overleaf.com/learn/latex/LaTeX_Graphics_using_TikZ:_A_Tutorial_for_Beginners_(Part_1)%E2%80%94Basic_Drawing) <br />                                                                                    


