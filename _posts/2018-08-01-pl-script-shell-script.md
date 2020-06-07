--- 
layout: post 
title: "Shell: My Script" 
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"] 
--- 
{% include JB/setup %}


```shell
for i in *.md
do
   var1="${i:0:10}"
   var2="${i:10:100}"
   echo "${var1}-code${var2}"
   mv "${i}" "${var1}-code${var2}"
done
```

