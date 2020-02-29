---
layout: post
title: "Python: Tqdm Package"
keywords: ["python", "tqdm"]
description: "python"
category: "code"
tags: ["python"]
---
{% include JB/setup %}

#### tqdm
+ tqdm: means progress in Arabic
+ function: instantly make your loops show a progress meter -  just wrap any iterable with tqdm **tqdm(iterable)**, and you are done


#### useage

1. command line mode

```shell
seq 100000000 | tqdm --total 100000000 | wc -l
```

2. python code mode

```python
from tqdm import tqdm

for i in tqdm(range(1000000)):
    pass
```





#### reference 
1. [tqdm](https://tqdm.github.io/)

