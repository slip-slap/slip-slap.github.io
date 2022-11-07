---
layout: post
title: "Editor: Vimscript Philosophy"
keywords: []
description: 
category: "PL"
tags: ["editor","script"]
---
{% include JB/setup %}

#### Always Stay on Normal Mode
The phiosophy of this is that vim commands are meant to be combined, and this
makes a lot more sense once you begin grokking vim, and stop seeing files as
something you edit, but instead as grid-like blocks of text that you can freely
manipulate and command

##### Normal Command is Language
1. verbs: **c**(change), **d**(delete), **y**(yank) 
2. nouns: **w**(word) , **}**(paragraph), **G**(eof) 
3. adjective: numberical prefixes and your descriptors.

#### Example one: delete, select, and change text in quotation, parenthesis 
- do the action of the verb in the mark.
```shell
ci'、ci"、ci(、ci[、ci{、ci< : change text
di'、di"、di(或dib、di[、di{或diB、di< - : delete text
yi'、yi"、yi(、yi[、yi{、yi< - 
vi'、vi"、vi(、vi[、vi{、vi
```

