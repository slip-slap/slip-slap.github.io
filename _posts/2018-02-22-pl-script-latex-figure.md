---
layout: post
title: "Latex: Figure"
keywords: ["Tikz", "PGF"]
description: 
category: "PL"
tags: ["latex","script"]
---

### 1. Basic knowledge of an Figure 

#### 1.1 DPI and PPI
1. PPI describes the resolution in pixels of a digital image. 
2. DPI describes the the amount of ink dots on a printed image.

#### 1.2 EPS file
A file ends with eps extension, you can make it as large as a billboard you see on the side of the highway.
If you want to include an eps file in your document, just treat as an image. There is one thing
that you should keep in mind, save the extension!

```latex
\includegraphics[scale=1]{experiment_figure}
```



### 2. Positioning

##### 2.1 requirement
1. The contents of this object, i.e., the image, cannot be broken over a page.
2. We should be able to specify the position of this object in the document
3. We should be able to add a caption to this object
4. We should be able to add a reference to this object, so that it can be cross-referenced
   elsewhere in the document

##### 2.2 Floats
In latex, floats are used to contain things that must be placed inside a single page, i,e, they
cannot be broken over multiple pages. floats can be used to contain tables and figures, but we can
define new custom floats as well.
1. The entity contained in a float is placed in a single page. If the entity(an image, for example)
   can not be contained in the space left in the current page, it is placed at the top of the next
   page
2. Floats can be positioned whereever we specify - top, middle, bottom, left, right
3. They can have a caption describing them.
4. They are numbered(so we can references to them)


### 3. Basic Use

##### 3.2 Mutiple images/subfigures 

```latex
\begin{figure}[h!]
\centering
	\begin{subfigure}[b]{0.4\linewidth}
		\includegraphics[width=\linewidth{path_to.jpg}]
	\end{subfigure}
	\begin{subfigure}[b]{0.6\linewidth}
		\includegraphics[width=\linewidth{path_to.jpg}]
	\end{subfigure}
	\caption{}
	\label{fig:image_xx}
\end{figure}
```


### 4 Package

#### 4.1 graphicx package
graphicx package takes care of the numbering and positioning of the image within the document.
1. \linewidth: the picture will be scaled to fit the width of the document, as a result, smaller
   pictures are upscaled and larger pictures dowscaled respectively..
2. [h!]: adding [h!] behind the figure environment \begin tag will force the figure to be shown at
   the location in the document
- h(here): same location
- t(top): top of page
- b(bottom): bottom of page
- p(page): on an extra page
- !(override): will force the specified location

##### 4.2 float package
It allows to set the option to [H], which is even stricter than [h!]

##### 4.3 subcaption package
This package provides **subfigure** environment;

##### 4.4 subfigure package

This package makes it easy to put subfigures in your figures. e.g., "Figure 1a and 1b". For IEEE
work, it is a good idea to load it with the tight package option to reduce the amount of white space
around the subfigures. 



### 5. Reference
1. [DPI and PPI](https://en.99designs.jp/blog/tips/ppi-vs-dpi-whats-the-difference/)
2. [figure in latex](https://www.latex-tutorial.com/tutorials/figures/)
3. [Positioning of Figures](https://www.overleaf.com/learn/latex/Positioning_of_Figures)
4. [eps format file within
   latex](https://tex.stackexchange.com/questions/182467/including-eps-figure-in-pdflatex)

