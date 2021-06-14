---
layout: post
title: "Latex: Bibtex with Endnote"
keywords: []
description: ""
category: "PL"
tags: ["latex","script"]
---

#### Import reference with bib extension into Endnote
Endnote failed to display the reference imported from a bib file used in latex
even if I use the correct filter which specified by the endnote. To figure out
the reason, I export the reference in bib form from endnote, then I re-import
this bib file, which can be showed properly. So I compare this bib file with the
bib file used in latex, the difference is so tricky.


1. Bib file used in latex
```latex
@article{schmit1977optimum,
  author={Schmit Jr, LA and Farshi, B},
  journal={International journal for numerical methods in engineering},
  volume={11},
  number={4},
  pages={623--640},
  year={1977},
  publisher={Wiley Online Library},
  url={https://doi.org/10.1002/nme.1620110403}
}
```

2. Exported file from Endnote
```latex
@article{RN369,
   author = {Schmit Jr, L. A. and Farshi, B.},
   title = {Optimum design of laminated fibre composite plates},
   journal = {International journal for numerical methods in engineering},
   volume = {11},
   number = {4},
   pages = {623--640},
   url = {https://doi.org/10.1002/nme.1620110403},
   year = {1977},
   type = {Journal Article}
}
```

Observe the two files, the first difference is identation, in which the first
one has two spaces, and the second has three spaces in each entry; the second
difference is the space before and after an equation mark, where the first has
space, the last doesn't have space. 


#### Galois
Program is very stupid: the input follows its grammar, it can read it perfectly,
otherwise a small mistake will make it crash.




