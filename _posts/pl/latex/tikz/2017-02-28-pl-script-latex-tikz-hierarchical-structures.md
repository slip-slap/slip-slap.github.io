---
layout: post
title: "Tikz: Structure"
keywords: []
description: ""
category: "PL"
tags: ["latex","script"]
---

#### Structures
1. Package: on the top level you need to include the **tikz** package
2. Environments: In the main tex, each graphic needs to be put in a **tikzpicture** environment
3. Scopes: Inside these envrionments, you can use **scope** environments to create internal groups.
4. Styles: Inside the scopes you use **\path** commands to actually draw something. 



#### Add caption to a Tikz picture

```latex
\begin{figure}
\centering
	\begin{tikzpicture}
	<code>
	\end{tikzpicture}
\caption{title}
\label{fig:title}
\end{figure}
```

#### Scopes

1. shift option: shift accepts as parameter a pair of coordinates.


```latex
\begin{tikzpicture}[ultra thick]
\draw (0,0) -- (0,1);
\begin{scope}[thin, shift={(1,1)}]
\draw (1,0) -- (1,1);
\draw (2,0) -- (2,1);
\end{scope}
\draw (3,0) -- (3,1);
\end{tikzpicture}
```


#### Reference
1. [Add caption for a Tikz picture](https://tex.stackexchange.com/questions/24000/how-to-add-caption-for-a-tikz-picture)

