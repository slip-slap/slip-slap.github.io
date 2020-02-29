---
layout: post
title: "bibliography"
keywords: ["Tikz", "PGF"]
description: ""
category: "code"
tags: ["latex"]
---


#### how to cite

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


**step 2**: include the **citation-database.bib** file

```latex
\bibliographystyle{plain}
\bibliography{citation-database}
\end{document}
```

**step 3**: cite in the paper <br />
The grammar is pretty simple

```latex
According to the paper\cite{liu2015comparison}
```

