---
layout: post
title: "Editor: Vimscript Normal Mode"
keywords: []
description: 
category: "PL"
tags: ["editor","script"]
---
{% include JB/setup %}


#### 1. Introduction
Why this is called normal mode ? Because this is the most important mode. Just
be always on this mode.


#### 2.1 Navigation
1. w: jump to the start of the next word
2. b: jump to the
3. ^: jump to the start of the line
4. $: jump to the end of the line
5. {: jump to the start of current paragraph
6. }: jump to the end of current paragraph
#### 2.2 Action
1. d: delete
2. y: copy
3. p: paste
4. r: replace

#### 2.3 Combination
1. General form: **Action+Number+Navigation**
- d5w
- y3}

```shell
# 映射G33e4东3
:nnoremap G dd
# normal命令将顾及当前的所有映射,下面的命令将会删除光标所在行
:normal G
# normal!
```


