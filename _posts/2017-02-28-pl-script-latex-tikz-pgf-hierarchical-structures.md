---
layout: post
title: "Tikz and PGF: Hierarchical Structures"
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


#### Reference
1. [Add caption for a Tikz picture](https://tex.stackexchange.com/questions/24000/how-to-add-caption-for-a-tikz-picture)

