---
layout: post
title: "C++: Preprocessor Code"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


```cpp
#content in foo.h

class Foo{
	public:
		Foo();
};
```
1. If we include the above header file multiple times without header guard, the 
the header file repeat itself on the cpp file which refers to it.

```cpp
#content in foo.cpp
#include "foo.h"
#include "foo.h"
Foo::Foo(){
}
```

2. excution the following command 

```shell
gcc -E foo.cpp
```

3. the output

```shell

# 1 "foo.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "foo.cpp"

# 1 "foo.h" 1
class Foo{
 public:
  Foo();
};
# 3 "foo.cpp" 2
# 1 "foo.h" 1
class Foo{
 public:
  Foo();
};
# 4 "foo.cpp" 2

Foo::Foo(){

}
```



