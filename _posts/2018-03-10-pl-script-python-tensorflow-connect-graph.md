---
layout: post
title: "Python TF: Connect Two Graph"
keywords: []
description: 
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}


```python
import tensorflow as tf

def graph_add():
    g = tf.Graph()
    with g.as_default() as g:
        a = tf.placeholder(tf.float32, [], name='a')
        b = tf.placeholder(tf.float32, [], name='b')
        c = tf.add(a, b, name='c')
        return g.as_graph_def()

def graph_pow():
    g = tf.Graph()
    with g.as_default() as g:
        d = tf.placeholder(tf.float32, [], name='d')
        e = tf.pow(d, 2, name='e')
    return g.as_graph_def()


tf.reset_default_graph()
a = tf.placeholder(tf.float32, [], name='a')
b = tf.placeholder(tf.float32, [], name='b')

[g1] = tf.import_graph_def(graph_add(), input_map={'a': a, \
        'b': b}, return_elements=['c:0'])

[g2] = tf.import_graph_def(graph_pow(), input_map={'d': g1}, \
        return_elements=['e:0'])  


with tf.Session() as sess:
    c, e = sess.run([g1,g2], feed_dict={a:10, b:20})
    print(c)
    print(e)
```
