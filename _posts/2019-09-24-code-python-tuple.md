---
layout: post
title: "tuple"
keywords: ["tuple"]
description: "python"
category: "python"
tags: ["code"]
---
{% include JB/setup %}


#### common mistake about tuple

If we print the variable index, and the output is like the code in the comment line. <br />
it means, **it is a tuple, and the first element is an array**

```python
a = [1,3,4,5,2,6]
b = np.array(a)
index = np.where(b > 3)
length = index[0].shape[0]
for i in range(length):
    print(a[index[0][i]])

#(array([2, 3, 5]),)
```

