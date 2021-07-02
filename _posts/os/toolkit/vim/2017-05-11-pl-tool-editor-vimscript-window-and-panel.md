---
layout: post
title: "Vimscript: window and Panel"
keywords: []
description: 
category: "PL"
tags: ["editor","script"]
---
{% include JB/setup %}

#### 1. adjust window width


```shell
:nnoremap  <leader>+ :vertical res +10 <cr>
:nnoremap  <leader>- :vertical res -10<cr>
```


#### 2. split screen
1. The short-cuts in command are different from in graphic environment, in
   graphic environment, you may enter the prefix and command simutaneously. but
   in command line, first, you click the prefix, then type the command

+ ctrl+w 为前缀键，j k h l上下左右切换
+ ctrl+w 为前缀键 >可以改变窗口大小
+ split file  
+ vsplit file 

