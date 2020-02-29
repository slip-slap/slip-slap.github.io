---
layout: post
title: "python sys"
keywords: ["python", "sys"]
description: ""
category: "python"
tags: ["language" ]
---
{% include JB/setup %}


#### intro
[文档](https://docs.python.org/3/library/sys.html?highlight=sys#module-sys)sys: this module provides access to some variables used or maintained by the interpreter and to functions that interact strongly with the interpreter


#### 功能

##### sys.path

The interpreter finds [import package] according to the order of path in the sys.path list.

```python
print(sys.path)
# system path
#['', '/Users/kismet/anaconda3/bin', '/Users/kismet/anaconda3/lib/python36.zip', '/Users/kismet/anaconda3/lib/python3.6', '/Users/kismet/anaconda3/lib/python3.6/lib-dynload', '/Users/kismet/anaconda3/lib/python3.6/site-packages', '/Users/kismet/anaconda3/lib/python3.6/site-packages/aeosa', '/Users/kismet/anaconda3/lib/python3.6/site-packages/IPython/extensions', '/Users/kismet/.ipython']
```

##### modules
this is a dictionary that maps module names to modules which have already been loaded
+ sys.modules.keys()
+ sys.module.values()
<hr />

