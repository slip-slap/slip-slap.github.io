---
layout: post
title: "Python: Keras"
keywords: []
description: 
category: "PL"
tags: ["python"]
---
{% include JB/setup %}

```python
from keras.models import load_model
model=load_model('model.h5')
# x is test data
y=model.predict(x)
print(y)
```



