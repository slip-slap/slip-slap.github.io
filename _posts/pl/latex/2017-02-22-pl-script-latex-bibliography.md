---
layout: post
title: "Latex: Bibliography"
keywords: ["Tikz", "PGF"]
description: ""
category: "PL"
tags: ["latex","script"]
---

#### 1. Introduction
bibtex is one of the additions of tex to manage the bibliography of a paper, so is biber.
- **bibtex** and **biber** are external programs that process bibliography
  information and act as the interface between you .bib file and your Latex
  document.

- Natbib and biblatex are latex packages that format citations and
  bibliographies: natbib works only with **bibtex**; while biblatex works with both bibtex and biber.


#### 2. With Bibtex as the engine

```latex
\begin{document}

\section{First section}

This document is an example of \texttt{thebibliography} environment using 
in bibliography management. Three items are cited: \textit{The \LaTeX\ Companion} 
book \cite{latexcompanion}, the Einstein journal paper \cite{einstein}, and the 
Donald Knuth's website \cite{knuthwebsite}. The \LaTeX\ related items are
\cite{latexcompanion,knuthwebsite}. 

\medskip

\begin{thebibliography}{9}
\bibitem{latexcompanion} 
Michel Goossens, Frank Mittelbach, and Alexander Samarin. 
\textit{The \LaTeX\ Companion}. 
Addison-Wesley, Reading, Massachusetts, 1993.

\bibitem{einstein} 
Albert Einstein. 
\textit{Zur Elektrodynamik bewegter K{\"o}rper}. (German) 
[\textit{On the electrodynamics of moving bodies}]. 
Annalen der Physik, 322(10):891–921, 1905.

\bibitem{knuthwebsite} 
Knuth: Computers and Typesetting,
\\\texttt{http://www-cs-faculty.stanford.edu/\~{}uno/abcde.html}
\end{thebibliography}

\end{document}

```

##### Core module 

**step 1**: prepare the dataset <br />
1.  prepare the bibliography file with extension "bib", such as **citation-database.bib**.

```latex
@article{liu2015comparison,
  title={Comparison of four Adaboost algorithm based artificial neural networks in wind speed predictions},
  author={Liu, Hui and Tian, Hong-qi and Li, Yan-fei and Zhang, Lei},
  journal={Energy Conversion and Management},
  volume={92},
  pages={67--81},
  year={2015},
  publisher={Elsevier}
}
```


**step 2**: include the **citation-database.bib** file, without the extension
1. To choose a Bibtex bibliographic style file with extension .bst. In the following example, the
   file is **plain.bst**

```latex
\bibliographystyle{plain}
\bibliography{citation-database}
\end{document}
```

**step 3**: to insert a citation where label is the label of a bibliography entry in a .bib file. 

```latex
According to the paper\cite{liu2015comparison}
```

#### How to use a specific style
5. You will need to typeset your document four times, first LaTex, BibTex, Latex, and then Latex
   again. 
- Your bibliography will now appear in the style of your choice and your citations will be correctly
  formatted. 
- If question marks appear where citations should, that means you need to Latex your document once
  more.


#### 3. The package providing reference style
- Both **Natbib** and **biblatex** packages provides styles to typeset citation and reference.
- Specify an engine, which is bibtex or biber, with natbib package you can only
  use the bibtex engine, with biblatex package, you have both.

#### 1. Natbib Package

```latex
%in the preamble
%--------------------------------
\usepackage{natbib}
\bibliographystyle{stylename} %dinat, humannat, plainnat
%--------------------------------
\bibliography{bibfile} % where the bibliography will be printed
```
#### 2. biblatex Package

1. in the preamble you need to use the following code:
```latex
\usepackage{biblatex} % loads up the biblatex package
\addbibresource{}     % specify which bib files you want to use. simply enter the file name with
extension 
```

2. if you want to declare one style for citations and a different style for the bibliography, you use
the words citestyle and bibstyle.
- in the body of the document instead of using a \bibliography command to construct bibliography,
-  you use the \printbibliography command

```latex
\usepackage[citestyle=alphabetic, bibstyle=authortitle]{biblatex}
```

3. Another argument you can give the \usepackage command is the sorting option. Here's a list of
   some of different sorting options available:
- nty - sorts entries by name, title, year;
- nyt - sorts entries by name, year, title;
- nyvt - sorts entries by name, year, volume, title;
- none - no sorting. Entries appear in the order they appear in the text.

If you don't specify an order the default is nty.

```latex
\usepackage[style=authoryear, sorting=ynt]{biblatex}
```

#### 4. Work with latex template provided by a Journal
You can get a latex template from a journal, within the template folder you can
find a bibliography style file. In this case, you can use it format your
reference, and the engine is bibtex.



#### Reference
1. [Biber](https://en.wikipedia.org/wiki/Biber_(LaTeX))
2. [biblatex package](https://www.overleaf.com/learn/latex/Articles/Getting_started_with_BibLaTeX)
3. [Natbib Package](https://www.overleaf.com/learn/latex/Natbib_bibliography_styles)
4. [biblatex bibliography styles](https://www.overleaf.com/learn/latex/biblatex_bibliography_styles)
5. [bibtex vs biber and biblatex vs natbib](https://tex.stackexchange.com/questions/25701/bibtex-vs-biber-and-biblatex-vs-natbib#:~:text=bibtex%20and%20biber%20are%20external,as%20the%20interface%20between%20your%20.&text=natbib%20and%20biblatex%20are%20LaTeX,with%20both%20bibtex%20and%20biber%20.))



