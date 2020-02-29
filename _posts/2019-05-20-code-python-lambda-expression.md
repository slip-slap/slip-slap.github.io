---
layout: post
title: "The lambda expression of Python"
keywords: ["python", "lambda"]
description: "python"
category: "code"
tags: ["python"]
---
{% include JB/setup %}

```python
numbers = (1, 2, 3, 4)
result = map(lambda x: x*x, numbers)
print(result)

# converting map object to set
numbersSquare = set(result)
print(numbersSquare)
```

