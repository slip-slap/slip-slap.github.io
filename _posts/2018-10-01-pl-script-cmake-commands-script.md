--- 
layout: post 
title: "Commands: Scripting Commands" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake","script"] 
--- 
{% include JB/setup %}


#### Examples
1. create a file named hello.txt with the following content.

```cmake
message("Hello world!")         # A message to print
```

2. run the script

```shell
cmake -P hello.txt
```


#### Reference
1. [CMake Scripting Language](https://preshing.com/20170522/learn-cmakes-scripting-language-in-15-minutes/)

