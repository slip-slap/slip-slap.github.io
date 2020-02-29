---
layout: post
title: "Python: Os module"
keywords: []
description: ""
category: "code"
tags: ["python"]
---

### intro
os: this module provides a portable way of using operating system dependent
functionality
### 功能
<hr />
#### 常用功能
```python
import os
# 清屏
os.system('clear')
# 获得当前文件名
os.path.abspath(__file__)
# 获得当前文件所在位置的目录名
os.getcwd()         
```
<hr />
#### 目录操作
+ os.walk(top，topdown)
+ top根目录下的每一个文件夹包括他自己，产生三元组(dirpath,dirnames,filenames),分别为文件夹路径，文件夹名字，文件名
+ topdown --可选，默认情况下，一个目录的三元组将比任何子文件夹的三元组先产生，也即先遍历父目录
