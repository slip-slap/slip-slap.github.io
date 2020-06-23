--- 
layout: post 
title: "C++ Library: Boost" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}
### 介绍
boost是一个可移植的，提供源代码的C++库，由于其对跨平台的强调，对标准C++的强调，与编写平台无关。大部分的boost库功能使用只需要包括相应的头文件即可，少数如正则表达式库和文件系统库需要连接库。

### 文件系统库

+ 头文件<boost/filesystem.hpp>提供对文件系统的重要操作，它定义了path类，是filesystem库的基础
+ 头文件<boost/filesystem/fstream.hpp>是对std::fstream的一个补充。

#### path类
path类是最重要的类，相当于opencv的Mat类
```c++
//如果下面有googletest目录，可以直接进行拼接
boost::filesystem::path full_path=boost::filesystem::current_path()/"googletest";
```

<font color="red">获得当前文件路径与文件名</font>
```c++
boost::filesystem::path file_path=boost::filesystem::current_path();///*/*/a.txt
std::string filename=file_path.filename().string();//a.txt
```
<font color="red">遍历当前目录下的子文件</font>
```c++
#include <boost/filesystem.hpp>
void readFile(){
	//获取当前目录
    boost::filesystem::path full_path=boost::filesystem::current_path();
    boost::filesystem::directory_iterator end_iter;
    boost::filesystem::directory_iterator itr(full_path);
    for(;itr!=end_iter;itr++){
        std::vector<std::string> vec;
        std::string file_name=itr->path().filename().string();
        std::cout<<file_name<<std::endl;
    }
}
```


#### Boost and CMake


```shell
cmake_minimum_required(VERSION 3.10)
project(foo VERSION 1.0)
set(CMAKE_CXX_STANDARD 11)
#if cmake find target component, it would print some information in the
#terminal.
find_package(Boost 1.72.0 COMPONENTS locale)
include_directories(${Boost_INCLUDES_DIRS})
add_executable(demo reference.cpp)
target_link_libraries(demo ${Boost_LIBRARIES})
```



