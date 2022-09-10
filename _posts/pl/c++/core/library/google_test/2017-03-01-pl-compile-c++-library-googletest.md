--- 
layout: post 
title: "C++ Library: Googletest" 
keywords: [] 
description: 
category: "PL"
tags: ["compile","c++"] 
--- 
{% include JB/setup %}


#### Keep in Mind 
1. Googletest is a library that provides API.
2. Googletest also provides the entry point, which is the main function. 

#### CMake configuration

```cpp
int main(int argc, char **argv)
{
	testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
```

```cmake
find_package(GTest REQUIRED)


add_executable(TheTest test_gmnode.cpp)

target_link_libraries(TheTest ${GTEST_BOTH_LIBRARIES} pthread)
target_link_libraries(TheTest ${Boost_LIBRARIES})
target_link_libraries(TheTest GTest::gmock GTest::gmock_main)
```



#### reference
1. [googletest](https://github.com/google/googletest)
2. [googletest](https://blog.csdn.net/joelcat/article/details/90766192)
