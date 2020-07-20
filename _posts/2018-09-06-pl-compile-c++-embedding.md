--- 
layout: post 
title: "C++ Embedding: " 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### Python Embedding

1. C++ Code

```cpp
#include <iostream>
int main()
{
  system("python /Users/kismet/Documents/code/cpp_code/test.py");
  return 0;
}
```

2. Python Code
```python
print("this is python script")
```

#### Shell Embedding

1. Shell Code

```shell
#!/bin/zsh
echo "hello"
```






