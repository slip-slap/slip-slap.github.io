---
layout: post
title: "Python: Introduction of Tensorflow"
keywords: []
description: "tensorflow"
category: "PL"
tags: ["python","tf"]
---
{% include JB/setup %}

#### what is the crap of tensorflow ?
1. tensorflow means tensor flows in graph
2. the tensorflow defines a compute graph, and you can define operation in the graph.
3. the purpose of the compute graph is to reuse the graph model. **reuse reuse reuseis the most important thing**


#### how to use tensorflow to calculate ?

define a graph, which includes three part:
1. define placeholder. placeholder is kind of the arguments of a function.
2. define variable. variable is belong to the graph itself. **I think this is the core part of a graph**, in machine learning the variable value
is the part we want learn.
3. define an operation. such as add, matmul etc.
in some degree, you can treat the tensorflow graph as a function. A function is a set of operations that you can reuse. but the special of a tensorflow
graph is you can get the value of any node in the graph.

```python
import tensorflow as tf

# define the placeholder, just as the argument of a function
a = tf.placeholder(tf.float32,name='a')
b = tf.placeholder(tf.float32,name='b')
# define the variable, variable means the value will change in the graph
random_var = tf.Variable(tf.random_normal([1]))
# define operation
c = tf.add(a, random_var)
d = tf.add(a, b)
# define an operation which initialize all variables
init = tf.initialize_all_variables()

# the following two line code creat the session and initial the graph
sess = tf.Session()
sess.run(init)

optimizer = tf.train.GradientDescentOptimizer(0.5)
result = optimizer.minimize(c)
sess.run(result,feed_dict={a:3,b:2})
print(sess.run(random_var))

```

####  The difference between tensorflow and other python library
Library just provide the **new class and new method** to write more concise and efficient code. <br />
Tensorflow is not **just only a Python library**.


<h4>demo 直线拟合</h4><br/>
```
import tensorflow as tf
import numpy as np

# use NumPy to produce data
x_data = np.float32(np.random.rand(2, 100))
y_data = np.dot([0.100, 0.200], x_data) + 0.300

# build a linear model
b = tf.Variable(tf.zeros([1]))
w = tf.Variable(tf.random_uniform([1, 2], -1.0, 1.0))
y = tf.matmul(w, x_data) + b

# loss
loss = tf.reduce_mean(tf.square(y - y_data))
optimizer = tf.train.GradientDescentOptimizer(0.5)
train = optimizer.minimize(loss)

# init

init = tf.initialize_all_variables()


# run graph
sess = tf.Session()
sess.run(init)

for step in range(0, 401):
    sess.run(train)
    if step % 20 == 0:
        print(step, sess.run(w), sess.run(b))

```
