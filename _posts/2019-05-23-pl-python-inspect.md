---
layout: post
title: "Python: Inspect Module"
keywords: []
description: ""
category: "PL"
tags: ["python"]
---
{% include JB/setup %}


#### function: get the source code

```python
import inspect
from scipy.stats import bernoulli

code = inspect.getsource(bernoulli.rvs)
print(code)
```

