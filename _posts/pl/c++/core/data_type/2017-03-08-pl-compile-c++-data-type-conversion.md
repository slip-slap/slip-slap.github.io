---
layout: post
title: "C++: Conversion of data type"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Type Punning


#### reinterpret\_cast
```cpp
int id = reinterpret_cast<int>(&obj);
```

#### dynamic\_cast
dynamic\_cast is a corresponding of isinstance of Python in c++.

```cpp
if(NewType* v=dynamic_cast<NewType*>(old)){
	//old was safely casted to NewType
	v->doSomthing();
}
```

#### The Swiss knife

```cpp
#include <sstream>
#include <string>
std::stringstream ss;
ss<<4;
std::string address;
ss>>address;
```





#### Reference
1. [C++ equivalent of java's instanceof](https://stackoverflow.com/questions/500493/c-equivalent-of-javas-instanceof)
2. [Type punning](https://www.youtube.com/watch?v=8egZ_5GA9Bc)
3. [stringstream](http://www.cplusplus.com/reference/sstream/stringstream/stringstream/)
