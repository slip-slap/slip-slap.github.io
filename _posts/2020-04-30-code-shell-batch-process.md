--- 
layout: post 
title: "Shell: Batch Processing" 
keywords: [] 
description: 
category: "code" 
tags: ["Shell"] 
--- 
{% include JB/setup %}



#### Rename Filename

```shell
for i in *.md
do 
    var1="${i:1:5}"
    var1="${i:10:100}"
    echo "${var1}-world-${var2}"
done
```


