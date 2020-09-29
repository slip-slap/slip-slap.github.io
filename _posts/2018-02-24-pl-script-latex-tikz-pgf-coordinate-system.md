---
layout: post
title: "Latex: The Coordinate System of PGF"
keywords: ["Tikz", "PGF"]
description: ""
category: "PL"
tags: ["latex","script"]
---

#### 1. Coordinate system canvas

1. x = <dimension> Distance by which the coordinate is to the right of the origin
2. y = <dimension> Distance by which the coordinate is above the origin.
3. To specify a coordinate in the coordiante system implicitly, you use two dimensions that are seperated by a comma as in (0cm, 3pt)


```tex
\begin{tikzpicture}
    \draw[style=help lines] (0,0) grid (3,2);
    \fill (canvas cs:x=1cm, y=1.5cm) circle (2pt);
    \fill (canvas cs:x=2cm, y=3cm+2pt) circle (2pt);
\end{tikzpicture}
```

#### 2. Coordinate system canvas polar

1. angle=<degrees> The angle of the coordinate. The angle range is from -360 to 720
2. radius=<dimension> The distance from the origin
3. The implicit form for canvas polar coordinates is the following: you specify the angle and the distance separated by a colon as in (30:1cm)

```tex
\begin{tikzpicture}
    \draw (0,0) -- (canvas polar cs:angle=30,radius=1cm) -- (90:2cm);
\end{tikzpicture}
```

#### 3. Barycentric Systems

In the barycentric coordinate system a point is expressed as the linear combinarion of multiple vectors.

```tex
\begin{tikzpicture}
    \coordinate (content) at (90:3cm);
    \coordinate (structure) at (210:3cm);
    \coordinate (form) at (-30:3cm);

    \draw [thick,gray] (content.south) -- (structure.north east) -- (form.north west) -- cycle;

    \node at (barycentric cs:content=0.5,structure=0.1,form=1) {PostScript};

\end{tikzpicture}
```

#### 4. Coordinate system node

1. name=<node name> specifies the node in which you want to specify a coordinate.
2. anchor=<anchor> specifies an anchor of the node.

```tex
\begin{tikzpicture}
    \node (shape) at (0,2) [draw] {class shape};
    \node (rect) at (-2,0) [draw] {class Rectangle};
    \node (circle) at (2,0) [draw] {class Circle};
    \node (ellipse) at (6,0) [draw] {class Ellipse};
    \draw (node cs:name=rect,anchor=north) |- (0,1) -| (node cs:name=shape,anchor=south);
\end{tikzpicture}
```

#### Relative and Incremental Coordinates
1. use a single **+**, this specifies a relative coordinate, but it does not undate the current point for subsequent usages of relative coordinates
2. use **++**



