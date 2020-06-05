---
layout: post
title: "Python: Ipython with Tensorflow"
keywords: ["python"]
description: "ipython"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}


#### pitfall
Ipython bring you the benefits, but also the pitfall


#### how to get the lost code back in ipython 

when you delete the code, and you want them back, you can using the following
method to get them back.

```python
def rescue_code(function):
    import inspect
        get_ipython().set_next_input("".join(inspect.getsourcelines(function)[0]))
```


#### Reference
1. [solution with you have to feed a placeholder](https://stackoverflow.com/questions/35114376/error-when-computing-summaries-in-tensorflow)
