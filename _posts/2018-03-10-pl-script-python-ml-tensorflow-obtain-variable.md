---
layout: post
title: "Python ML: Obtain Variable Value in Tensorflow"
keywords: []
description: "tensorflow"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}


#### introduction
you can treat tensorflow as a blackbox, when we want to check the tensor.
tensorflow provide some api to get the tensor

#### check the tensor with tf.Session()

#### check the variable

Tensorflow provides graph collections that group the variables. To access the
variables you can run the following code
```python
# get variable that you trained
tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES)
# get all variable 

```
