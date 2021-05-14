---
layout: post
title: "Tex: System Command"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

#### Tex and latex
1. Both the output of tex and latex is with .dvi extension, the grammar of
   latex is more simple and efficient. 
- we should refer tex as dvitex, and latex as dvilatex.

#### pdftex and pdflatex
1. The file format of these two commands are the same, which is pdf extension.

2. In some packages, some features are excusilve to pdftex.

#### Bibtex
Bibtex is reference management software for formatting lists of references.
The bibtex is typically used together with the latex document preparation
system.

- Make a bibliography for (La)Tex.

##### Alternative
1. Biber is a bibliography information processing program and works in
   conjunction with the latex package biblatex.

##### How does it work?
Here's how Bibtex works. It takes as input
1. an .aux file prodeced by latex on an earlier run;
2. a .bst file, which specifies the general reference-list style and specifies
   how to format individual entries.
3. .bib file constituting a database of all reference-list entries the user
   might ever hope to use. 

#### The file with the extension .synctex.gz
This file allows you to jump to and from the source code and the appropriate
part of the output file.

#### The file has the extension .log
The log file contains a transcript of the most recent latex run. It lists all
the files that have been loaded, including the class file and any packages that
your document has used.


#### cross-references
In some cases, when your document includes cross-references, you must compiler
the source twice. It is necessary to include the correct numbers in the table
of contents, list of images, reference numbers to theorems and so on.

1. During the first compilation the Latex compiler writes the .aux file for
   informations about different numbering and during the second one the
   compiler reads these informations in order to properly generate a table of
   contents, bibliography, etc.
2. This process can be automatized by the command latexmk. For example, to
   create a pdf out of the tex file, run
- latexmk -pdf mydocument.tex
only once, even if the document has referenced images and bibliography. You can
change -pdf to -dvi to set a different file type.

<img src="{{IMAGE_PATH}}/pl-script-tex-system-command.png" height="" width="" />

#### Reference
1. [tex and pdftex](https://tex.stackexchange.com/questions/349/what-is-the-practical-difference-between-latex-and-pdflatex)
2. [bibtex](https://en.wikipedia.org/wiki/BibTeX)
3. [tex, latex, pdftex, xetex, context](https://www.overleaf.com/learn/latex/Articles/The_TeX_family_tree:_LaTeX,_pdfTeX,_XeTeX,_LuaTeX_and_ConTeXt)
4. [choosing a latex compiler](https://www.overleaf.com/learn/latex/Choosing_a_LaTeX_Compiler)

