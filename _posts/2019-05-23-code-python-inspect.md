---
layout: post
title: "inspect module of python"
keywords: ["", "inspect"]
description: "python"
category: "python"
tags: ["language"]
---
{% include JB/setup %}


#### function: get the source code

```python
import inspect
from scipy.stats import bernoulli

code = inspect.getsource(bernoulli.rvs)
print(code)
```

