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

#### Remark
CMake is so different from Java, C++, and Python etc., one of them is variable dereference.
- In c++, the value that the variable refers to can be changed, obtained
  directly. However, $() is necessary to modify or derefer the corresonding
  value in CMake.
- In nature, it is just different approach to deference variable.





