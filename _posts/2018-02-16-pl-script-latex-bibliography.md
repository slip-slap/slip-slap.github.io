---
layout: post
title: "Latex: Bibliography"
keywords: ["Tikz", "PGF"]
description: ""
category: "PL"
tags: ["latex","script"]
---

#### Introduction
1. latex is a typesetting markup language is used to create formatted document.
2. Bibtex is a tool to generate and format bibliography in a latex document.
- use of biblatex package will generate a file with .bbl extension.



#### Method

**step 1**: prepare the dataset <br />
1.  create bibliography file with extension name "bib", such as **citation-database.bib**
2.  find the paper you need in google scholar
3.  click **Import into BibTex** link, and copy the source code to the bibliography file.

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
#### Package

#### 1. Natbib Package

```latex
%in the preamble
%--------------------------------
\usepackage{natbib}
\bibliographystyle{stylename} %dinat, humannat, plainnat
%--------------------------------
\bibliography{bibfile} % where the bibliography will be printed
```
#### 2.  

#### Reference
1. [Natbib Package](https://www.overleaf.com/learn/latex/Natbib_bibliography_styles)
2. [Latex and Bibtex](https://unimelb.libguides.com/latexbibtex)



