---
layout: post
title: "Tex: Different Version"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

#### XeTex
Xetex is a Unicode Tex engine which can load the system font directly using 
HarfBuzz library. 
- It doesn't produce PDF output directly, works via an intermediate format
  XDV(extended DVI). XDV files can not be viewed directly, and are normally
  converted directly to PDF as part of the xetex run.(by xdvipdfmx)


#### Work with System Font

```tex
\documentclass[a4paper]{article}

\usepackage{fontspec,lipsum}

\setmainfont[Path=/Users/username/Downloads/]{SpecialFont.ttf}

\begin{document}
\lipsum
\end{document} 
```


#### LuaTex
LuaTex is a Tex engine with a Lua interpreter. 






#### Reference
1. [XeTex and LuaTex](https://texfaq.org/FAQ-xetex-luatex#:~:text=LuaTeX%2C%20like%20XeTeX%2C%20is%20a,end%20makes%20it%20particularly%20powerful.)
2. [XeLatex on MacOS: Using User Fonts](https://tex.stackexchange.com/questions/70364/xelatex-on-mac-osx-using-user-fonts)

