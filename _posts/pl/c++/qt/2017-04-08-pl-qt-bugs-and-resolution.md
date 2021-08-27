--- 
layout: post 
title: "Qt: bugs" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","Qt"]
--- 
{% include JB/setup %}

#### Invisible menubar

1. solution
```cpp
ui->setupUi(this);
ui->menuBar->setNativeMenuBar(false);
```


#### Reference
1. [invisible menu bar](https://forum.qt.io/topic/57852/solved-menu-bar-remains-stubbornly-invisible-on-mac-os-x-yosemite/2)
