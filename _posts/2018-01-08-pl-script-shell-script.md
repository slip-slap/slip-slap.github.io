--- 
layout: post 
title: "Shell: Script" 
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"] 
--- 
{% include JB/setup %}

#### Input Parameters
1. Unlike C++, Java, which have an entry point, we can pass actual parameters
   to formal parameters.
2. In Shell script, it design a new way to accept input parameters

```shell
# $0: name of executable file
# $1, $2: first and second parameters of the program
# $@: all input parameters
```





```shell
for i in *.md
do
   var1="${i:0:10}"
   var2="${i:10:100}"
   echo "${var1}-code${var2}"
   mv "${i}" "${var1}-code${var2}"
done
```

