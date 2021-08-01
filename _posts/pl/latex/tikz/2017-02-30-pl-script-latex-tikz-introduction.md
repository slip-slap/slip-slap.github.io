---
layout: post
title: "Tikz: Introduction"
keywords: ["Tikz"]
description: 
category: "PL"
tags: ["latex","script"]
---

#### the relationship between Tikz and PGF

1. Tikz is a user-friendliness frontend of PGF library, where **Tikz** means "TikZ isn Kevin Zeichenprogramm." Tikz's job is to make 
your life eazier by providing a easy-to-learn and easy-to-use syntax for describing graphics.
2. PGF is a backend of Tikz

You can create your own frontend based on the PGF library.

#### Design Principal Underlie TikZ

##### 1. Special syntax for specifying points

1. provide two Tex dimensions, separated by commas, in round brackets as in (1cm, 2pt)
2. specify a point in polar coordinates by using a colon instead of a comma as in (30:1cm), which means "1cm in a 30 degrees direction"
3. If you do not provide a unit, as in (2,1), you specify a point in PGF's xy-coordinate system. By default, the unit x-vector goes 1cm
to the right and the unit y-vector goes 1cm upward.
4. It is also possible to use an anchor of a previously defined shape as in (first node.south)
5. relative movement with ++ and + <br />
  The difference is two plus signs change the current point. For example (1,0) ++(1,0) ++(0,1) specifes three coordinates (1,0),(2,0) and (2,1)
  The one plus doesn't chane the current point. For example (1,0) +(1,0) +(0,1) specifies the three coordinates (1,0), (2,0) and (1,1)

##### 2. Special Syntax For Path Specifications

When creating a picture using TikZ, you main job is the specification of **paths**. <br />
A path is a series of straight or curved lines, which need not be connected, but it is not yet specified what should happen with it.
the source of the syntax comes from **METAPOST** <br />

For example, to specify a triangular path you use

```tex
(5pt,0pt) -- (0pt,0pt) -- (0pt,5pt) -- cycle
```

##### 3. Actions on Paths

A path is just a series of straight and curved lines, but it is not yet specified what should happen with it. <br />
one can **draw** a path, **fill** a path, **shade** a path, **clip** it, or do any combination of these.

1. Drawing (also known as stroking) can be thought of as taking a pen of a certain thickness and moving it along the path.
2. Filling means that the interior of the path is filled with a uniform color. Obviously, filling makes sense only for **closed**
paths and a path is automatically closed prior to filling. If necessary.

For example, Given the path as  **\path (0,0) rectangle (2ex, 1ex)** <br />
1. draw it by adding the **draw** option **\path[draw] (0,0) rectangle (2ex, 1ex)**  **\draw** command is an abbreviation for **\path[draw]**
2. fill it by adding the **fill** option **\path[fill] (0,0) rectangle (2ex, 1ex)**  **\fill** command is an abbreviation for **\path[fill]**
3. **\filldraw** command is an abbreviation for **\path[fill,draw]**

##### 4. Key-Value Syntax for Graphic Parameters

Whenever TikZ draws or fills a path, a large number of graphic parameters influenced the rendering. Example include the color used,
the dashing pattern, and many others. <br />
In TikZ, all these options are specified as lists of so called key-values pairs. they are passed as optional parameters to the path drawing and filling commands

```tex
\begin{tikzpicture}
    \path[draw][line width=2pt,color=red]
        (0,0) -- (1,0) -- (2,2) -- (3,3) ;
\end{tikzpicture}
```

##### Special Syntax for Specifying Nodes

TikZ introduces a special syntax for adding text, more generally, nodes to a graphic. <br />
which means Tikz provides **Node grammar** to add text to a graphic <br />

```tex
\begin{tikzpicture}
    \path[draw][line width=2pt,color=red]
        (0,0) node {text} -- (3,3) ;
\end{tikzpicture}
```
1. The **\node** command is an abbreviation for **\path node**
1. The **\matrix** command is an abbreviation for **\path node[matrix]**

```tex
\begin{tikzpicture}
    \node at (0,2) [circle,draw] {};
    \node at (0,1) [circle,draw] {};
    \node at (0,0) [circle,draw] {};
    \node at (1,1) [rectangle,draw] {};
    \node at (-1,1) [rectangle,draw] {};
\end{tikzpicture}
```



#### Weird Grammar in Tikz

```tex
% in the following line, you can't put any space around the equivalent sign after the word style.
% That's the rule, you just can't 
\tikzstyle my style=[color = blue!50, very thin]
\begin{tikzpicture}
  \draw[style=my style ,step=0.5] (-1.4,-1.4) grid (1.4,1.4);
  \draw (0,0) circle (1cm);
\end{tikzpicture}.
```


#### Color Expression

PGF uses Uwe Kern's **xcolor** package. <br />
in the latex code, **green!20!white** means 20% green and 80% white. 



#### Reference
1. [xcolor package](http://texdoc.net/texmf-dist/doc/latex/xcolor/xcolor.pdf)


