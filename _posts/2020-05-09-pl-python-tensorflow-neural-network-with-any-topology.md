---
layout: post
title: "Python: Build Neural Network With Any Topology"
keywords: []
description: 
category: "PL"
tags: ["python","tf"]
---
{% include JB/setup %}


```python
def layer(layer_name, data, output_channels):
    with tf.variable_scope(layer_name,reuse=tf.AUTO_REUSE):
        w = tf.get_variable(name="weight",shape=[data.shape[-1],output_channels])
        b = tf.get_variable(name="bias",shape=[output_channels])
        summary_bias = tf.summary.histogram("bias",b)
        y = tf.matmul(data,w)
        y = tf.add(y,b)
    return y

import tensorflow as tf
import numpy as np

# use NumPy to produce data
x_data = np.float32(np.random.rand(100, 2))
y_data = np.dot(x_data,[[0.1],[0.2]]) + 0.300
y=layer("first",x_data,6)
y=layer("second",y,2)
y=layer("third",y,3)
y=layer("fourth",y,1)

# loss
loss = tf.reduce_mean(tf.square(y - y_data))
summary_loss = tf.summary.scalar(name="loss",tensor=loss)
optimizer = tf.train.GradientDescentOptimizer(0.01)
train = optimizer.minimize(loss)

# init

init = tf.initialize_all_variables()
merged = tf.summary.merge_all()

# run graph
with tf.Session() as sess:
    sess.run(init)
    writer = tf.summary.FileWriter("./ann",sess.graph)
    for step in range(0, 40000):
        sess.run(train)
        summary = sess.run(merged)
        writer.add_summary(summary, step)
        if step % 20 == 0:
            print(step,sess.run(loss))

```

#### Tricky Things
1. 


