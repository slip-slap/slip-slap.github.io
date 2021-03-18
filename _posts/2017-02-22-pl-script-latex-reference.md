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
- Biber is a widely used replacement for the BibTex software. Both generate a bibliography in latex.


#### How to use a specific style
1. Place available BibTex style in the same folder as your latex document
2. Change the **\bibliographystyle** line of your latex document to reflect the style you choose.
   Remember to remove the file extension
3. Many Bibtex styles require the inclusion of a package at the top of the document. The comments
   about a style will tell you exactly how to include its package. Just open up the .bst in your
   Latex editor
4. Anytime you want to cite a document, type **\cite[pagenumber]{citekey}**. The square brackets and
   page number are optional. Some bibtex styles use nonstandard citations. Such styles include
   citation directions within the .bst itself.
5. You will need to typeset your document four times, first LaTex, BibTex, Latex, and then Latex
   again. 
- Your bibliography will now appear in the style of your choice and your citations will be correctly
  formatted. 
- If question marks appear where citations should, that means you need to Latex your document once
  more.



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
Common stylename
- numeric
- alphabetic
- authoryear
- authortitle
- verbose
- reading



#### Reference
1. [Natbib Package](https://www.overleaf.com/learn/latex/Natbib_bibliography_styles)
2. [Latex and Bibtex](https://unimelb.libguides.com/latexbibtex)
3. [Biber](https://en.wikipedia.org/wiki/Biber_(LaTeX))
4. [Choosing a Bibtex style](https://www.reed.edu/cis/help/LaTeX/bibtexstyles.html)
5. [biblatex](https://www.overleaf.com/learn/latex/Articles/Getting_started_with_BibLaTeX)
6. [biblatex bibliography styles](https://www.overleaf.com/learn/latex/biblatex_bibliography_styles)



