---
layout: post
title: "Python: Exception"
keywords: []
description: ""
category: "PL"
tags: ["python"]
---

<h4>with...as...</h4><br/>
```
class Demo:
    def __enter__(self):
        print("enter function")
        return "Foo"

    def __exit__(self, exc_type, exc_val, exc_tb):
        print("exit")

with Demo() as demo:
    print("hello")
# __enter__
# __exit__可以处理异常参数
```
