--- 
layout: post 
title: "Cmake: Modules" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake"] 
--- 
{% include JB/setup %}


[官方文档](https://cmake.org/cmake/help/v3.0/module/FindPkgConfig.html)看完直接想吐。  
上代码  
```
find_package(PkgConfig REQUIRED)
#pkg_check_modules(FOO,OPENCV) 这是错误写法，中间没有逗号，而且有空格
pkg_check_modules(FOO OPENCV)
include_directories(${FOO_INCLUDE_DIRS})
target_link_libraries(untitled ${FOO_LIBRARIES})
```



