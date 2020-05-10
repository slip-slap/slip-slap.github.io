---
layout: post
title: "Python: Define Variable in Tensorflow"
keywords: []
description: "tensorflow"
category: "PL"
tags: ["python","tf"]
---
{% include JB/setup %}

#### variable sharing

It is a mechanism in Tensorflow that allows for **sharing variables accessed in different part of the code
without passing the reference around**. <br />
In traditional method, when you want to use the same variable in different method, you have to pass the variable by function parameter.
But, tensorflow provides a new way to **access variables in different function**, This is amazing.  

1. the method tf.get\_variable() can be used with the name of the variable as the argument to either create a 
new variable with such name or retrieve the one that was create before.

2. the method tf.Variable will create a new variable every time it was called. and add a suffix to the variable if a variable with such a name 
already exists.

#### two types of scopes

1. name scope: tf.name\_scope
2. variable scope: created using tf.variable\_scope, **it is for the purpose of the variable sharing mechanism 
that a separate type of scope (variable scope) was introduced**, 这里的variable, 应该理解成变化的 

This is a pretty long story, **name\_scope** is very common, nothing different compare with the purpose of name space in c++. <br />
but, the weird thing is variable scope is invented on purpose just to satisfy the **variable sharing mechanism** purpose. <br />
**The only way to place a variable accessed using tf.get\_variable in a scope is to use a variable scope**


why it has two different types of scopes. The reason is that with variable scope, **one can define separate scopes for re-usable variable
that are not effected by the current name space** used to define operation. such as the following code.

```python
with tf.name_scope("foo"):
    with tf.variable_scope("var_scope"):
        v1 = tf.get_variable("bird",[])

with tf.name_scope("bar"):
    with tf.variable_scope("var_scope", reuse=True)
        v2 = tf.get_variable("bird", [])
```


The following code is about tf.variable\_scope and tf.name\_scope
```python

import tensorflow as tf
import numpy as np

# use NumPy to produce data
x_data = np.float32(np.random.rand(2, 100))
y_data = np.dot([0.100, 0.200], x_data) + 0.300

# build a linear model
input_x = tf.placeholder(shape=[2,None],dtype=tf.float32,name="input_x")
input_y = tf.placeholder(shape=[100],dtype=tf.float32,name="input_y")

with tf.variable_scope("var",reuse=tf.AUTO_REUSE):
    b = tf.get_variable(initializer=tf.zeros([1]),name="b")
    print(b.name)
    w = tf.get_variable(initializer=tf.random_uniform([1, 2], -1.0, 1.0),name="w")
y = tf.matmul(w, input_x) + b

# loss
with tf.name_scope("total"):
    loss = tf.reduce_mean(tf.square(y - input_y))
    loss_summary = tf.summary.scalar("loss",loss)
    print(loss.name)
optimizer = tf.train.GradientDescentOptimizer(0.5)
train = optimizer.minimize(loss)


# init
init = tf.global_variables_initializer()



with tf.Session() as sess:
    sess.run(init)
    for step in range(0, 401):
        sess.run(train,feed_dict={input_x:x_data,input_y:y_data})
        if step % 20 == 0:
            print(step, sess.run(w), sess.run(b))

```





#### Reference
1. [name\_scope and variable\_scope](https://stackoverflow.com/questions/35919020/whats-the-difference-of-name-scope-and-a-variable-scope-in-tensorflow)




