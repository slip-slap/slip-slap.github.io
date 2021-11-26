--- 
layout: post 
title: "CMake: summary" 
keywords: [] 
description: 
category: "PL"
tags: ["cmake"] 
--- 
{% include JB/setup %}

#### Why exist?
To  compile c++ source code, the following command is used.

```bash
g++ source.cpp -std=c++11 -lgtest -lgtest_main -lgmock -pthread
```

CMake is used to replace this command. The corresponding cmake code is

```cmake
target_link_libraries(TheTest ${GTEST_BOTH_LIBRARIES} pthread)
target_link_libraries(TheTest /usr/local/Cellar/googletest/1.11.0/lib/libgmock.a)
target_link_libraries(TheTest /usr/local/Cellar/googletest/1.11.0/lib/libgmock_main.a)
```




