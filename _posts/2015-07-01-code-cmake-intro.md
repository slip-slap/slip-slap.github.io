--- 
layout: post 
title: "Cmake: Introduction" 
keywords: [] 
description: 
category: "code" 
tags: ["cmake"] 
--- 
{% include JB/setup %}
 
#### Make 
代码变成可执行文件，叫编译；<br />
编译的顺序，叫做构建;<br />
make是最常用的构建工具,make主要用来构建c语言的项目，实际上，任何主要某个文件有变化，就要重新构建项目，都可以用make构建
<hr />
#### 语法
```shell
<target> : <prerequisites>
[tab] <commands>
```
<hr />
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

#### Cmake
cmake is a cross-platform build system.


cmake也是一种编程语言，像c++一样。不过它有自己独特的语法结构.  
同maven相比，它没有网络仓库的概念，它的仓库需要在本地.  
也没有约定的目录结构.


相同的是，都有配置文件。在maven中是pom.xml.在cmake中是CMakeLists.txt



CMakeLists.txt文件的代码
```
cmake_minimum_required(VERSION 3.7)
project(demo)
```
cmake常用命令
```
cmake .. -G "Unix Makefiles"
#cmake命令后的路径用来指出CMakeList.txt所在的位置。
```

#### Reference
1. [document](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
