---
layout: post
title: "C++: debug case"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Case
1. The error

<img src="{{IMAGE_PATH}}/c++/debug-qt.png"/>

2. The reason triggering the error

```cmake
include_directories(/usr/local/include)
```

#### Reasoning
1. Where is this *gglobal.h* file?
- it's located in the folder /usr/local/include/QtCore/qglobal.h
- this file belong to Qt package, and it's version is 6.1.2, which needs c++ 17
  to compile. However, the qt
  version I adopt is 5.15.2, which needs c++ 11 to compile.

2. How I bump into include qt 6.1.2, because it locates under
   */usr/local/include* folder. I should remove it from this folder.
Then the problem solved.






