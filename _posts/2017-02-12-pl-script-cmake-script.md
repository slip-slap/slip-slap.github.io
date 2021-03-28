--- 
layout: post 
title: "CMake: Script" 
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

#### add\_subdirectory() vs include()
The reason I have this question is I have no idea about the three components in cmake
- script
- module: include() used to include some\_name.cmake module.
- project: add\_subdirectory() used


#### Reference
1. [CMake Scripting Language](https://preshing.com/20170522/learn-cmakes-scripting-language-in-15-minutes/)
2. [add\_subdirector() vs include()](https://stackoverflow.com/questions/48509911/cmake-add-subdirectory-vs-include)

