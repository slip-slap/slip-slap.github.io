--- 
layout: post 
title: "Cmake: Introduction" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake"] 
--- 
{% include JB/setup %}
 

#### Cmake
1. You must treat Cmake as a programming language with **special syntax**, how
   to treat cmake as a programming language, things you need keep in mind
- treat every statement with parenthesis as a function, figure out the function
  mean and related parameters
- it's a special language, because it has predefined variable, you need pay
  attention.
2. Compared with maven, all the required library is in local, it doesn't have
   default catagory structure.
3. Both of them need configuration file, maven need "pom.xml", cmake needs
   "CMakeLists.txt"


```
cmake_minimum_required(VERSION 3.7)
project(demo)
```



#### Make 
make主要用来构建c语言的项目，实际上，任何主要某个文件有变化，就要重新构建项目，都可以用make构建

#### 语法
```shell
<target> : <prerequisites>
[tab] <commands>
```
1. make命令在没有指定目标时，默认会执行makefile文件的第一个目标
2. make targetName 执行相应的代码
```makefile
do:
	echo "default target"
clean:
	rm create
create:
	echo "create a file" > create
```

#### Reference
1. [document](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
2. [Cmake Variable](https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/Useful-Variables)
