---
layout: post
title: "Python: Openml"
keywords: ["openml"]
description: 
category: "code"
tags: ["python"]
---
{% include JB/setup %}

#### what the crap of openml

An automated machine learning environment.

```python
import openml

# obtain dataset list
dataset_list = openml.datasets.list_datasets()
dataset_list_pd = pd.DataFrame.from_dict(dataset_list,orient='index')

# get the mnist dataset ID
dataset_list_pd[dataset_list_pd.name.str.contains('mnist')]
mnist_dataset = openml.datasets.get_dataset(554)
```


#### Reference
1. [OpenML tutorial](https://openml.github.io/OpenML/Python-examples/)


