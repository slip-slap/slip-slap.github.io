---
layout: post
title: "Python TF: Tensorboard"
keywords: []
description: ""
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}


#### Introduction
TensorBoard is a visualization software that comes with any standard Tensorflow
installation. In Google's words: "The compuations you'll use Tensorflow for(like
training a massive deep neural network)"


#### 启动tensorboard
python /path/to/tensorflow/install/directory/tensorflow/tensorboard/tensorboard.py --logdir/to/log-directory
```shell
python /Users/huiyaozhang/Library/Python/2.7/lib/python/site-packages/tensorflow/tensorboard/tensorboard.py --logdir=/tmp/tensorflow/mnist/logs 
```



### Demo


#### Visualizing the Graph

1. create a simple compuation graph

```python
import tensorflow as tf
a = tf.constant(2)
b = tf.constant(3)
c = tf.add(a,b)
with tf.Session() as sess:
    print(sess.run(c))
```

2. To visualize the program with TensorBoard, we need to write log files of the program. <br />
To write event files, we first need to create a **writer** for those logs, using the following line. <br />
```python
writer = tf.summary.FileWriter([logdir], [graph])
```
where [logdir] is the folder where you want to store those log files. <br />
where [graph] is the graph of the program we're working on <br />

```python
import tensorflow as tf
a = tf.constant(2)
b = tf.constant(3)
c = tf.add(a,b)
with tf.Session() as sess:
    writer = tf.summary.FileWriter('./graphs',sess.graph)
    print(sess.run(c))
```

3. To make TensorBoard understand the names of your ops, you have to explicitly name them

```python
import tensorflow as tf
a = tf.constant(2, name="a")
b = tf.constant(3, name="b")
c = tf.add(a,b, name="addition")
with tf.Session() as sess:
    writer = tf.summary.FileWriter('./graphs',sess.graph)
    print(sess.run(c))
```

4. remark
+ if you run your code several times with the same [logdir], there are will be
  multiple event files in your [logdir], TF will show only the latest graph and
  display the warning of multiple event files. To get rid of the warning, delete
  the event files you no longer need or save them in different [logdir] folders.

#### Writing Summaries to Visualize Learning

So far we only focused on how to visualize the graph in TensorBoard. In this
second part, we are now going to use a special operation called **summary** to
visualize the model parameters(like weights and biases of a neural network),
metrics(like loss or accuracy value), and images(like input images to a
network). <br />
Summary is a special TensorBoard operation that takes in a regular tensor and
outputs the summarized data to your disk(i.e. in the event file).  Basically,
there are three main types of summaries:


##### demo
Randomly pick values from a standard Normal distribution, N(0,1), and plot them one after the other.

```python
import tensorflow as tf
x_scalar = tf.get_variable('x_scalar', shape=[], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))
# step the scalar summary
first_summary = tf.summary.scalar(name='my_first_summary', tensor=x_scalar)
init = tf.global_variables_initializer() 
with tf.Session() as sess:
    # creating the writer inside the session
    writer = tf.summary.FileWriter('./graphs', sess.graph)
    for step in range(1000):
        sess.run(init)
        # evaluate the scalar summary
        summary = sess.run(first_summary)
        # add the summary to the writer(i.e. to the event file)
        writer.add_summary(summary,step)
```

##### tf.summary.histogram
It's for plotting the histogram of the values of non-scalar tensor. This gives us a view of how does the histogram of the tensor values change
over time or iterations. In the case of neural networks, it's commonly used to monitor the changes of weights and biases distributions. It's
very useful in detecting behavior of the network parameters like when many of the weights shrink to almost zero or grow largely.

```python
import tensorflow as tf
x_scalar = tf.get_variable('x_scalar', shape=[], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))
x_matrix = tf.get_variable('x_matrix', shape=[30, 40], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))
first_summary = tf.summary.scalar(name='my_first_summary', tensor=x_scalar)
histogram_summary = tf.summary.histogram('my_histogram_summary', x_matrix)
init = tf.global_variables_initializer() 
with tf.Session() as sess:
    writer = tf.summary.FileWriter('./graphs', sess.graph)
    for step in range(1000):
        sess.run(init)
        summary1, summary2 = sess.run([first_summary,histogram_summary])
        writer.add_summary(summary1,step)        
        writer.add_summary(summary2,step)
```
1. if you open TensorBoard in your browser, you'll  find two new tabs added to the top menu: "Distributions" and "Histograms".
2. As you can see in the figure, the "Distributions" tab contains a plot that shows the distribution of the values of the tensor(y-axis)
throw steps(x-axis).
3. In the distribution tab, the bottom line(the very light one) shows the minimum value has changed over time, and the line in the middle shows how the 
median has changed.
4. in the histogram panel, each chart shows temporal slices of data, where each slice is a histogram of the tensor at a given step, it's organized with 
the oldest timestep in the back, and the most recent timestep in front.


#### tf.summary.merege\_all()
To make running and writing the summaries extremly inefficient. the way around it is to merge all summaries in you graph and run them at once inside 
your session. This can be done using **tf.summary.merge\_all()**

```python
import tensorflow as tf
x_scalar = tf.get_variable('x_scalar', shape=[], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))
x_matrix = tf.get_variable('x_matrix', shape=[30, 40], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))
first_summary = tf.summary.scalar(name='my_first_summary', tensor=x_scalar)
histogram_summary = tf.summary.histogram('my_histogram_summary', x_matrix)

# merge all summaries
merged = tf.summary.merge_all()
init = tf.global_variables_initializer() 
with tf.Session() as sess:
    writer = tf.summary.FileWriter('./graphs', sess.graph)
    for step in range(1000):
        sess.run(init)
        summary = sess.run(merged)
        writer.add_summary(summary,step)        
```

#### tf.summary.image
As its name showd, this type of summary is for writing and visualizing tensors as images. In thce case of neural networks, this is 
usually used for tracking the images that are either fed to the network or the images generated in the output, such as the reconstructed 
images in an autoencoder; or the fake images made by the generator model of a GAN. However, in general, this can be used for plotting any tensor.
For example, you can visualize a weight matrix of size 30\*40 as an image of 30\*40 pixels.

```python
tf.summary.image(name, tensor, max_outputs=3)
```
1. where name is the name for the generated node, tensor is the desired tensor to be written as an image summary. 
2. The tensor that you feed to tf.summary.image must be a 4-D tensor of shape ** [batch\_size, height, width, channels]** where batch\_size
is the number of images in the batch, height and width determines the size of the image and channels.

```python
import tensorflow as tf
gs = tf.get_variable('grayscale', shape=[30,10], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))
c  = tf.get_variable('color', shape=[50,30], initializer=tf.truncated_normal_initializer(mean=0, stddev=1))

# step 1: reshape to 4D tensors
gs_reshape = tf.reshape(gs, (3, 10, 10, 1))
c_reshape = tf.reshape(c, (5, 10, 10,3))

# step 1: summary
#tf.summary.image("gray",gs_reshape)
# DO NOT FORGET WRITE THE RETURN VALUE
gs_summary=tf.summary.image("gray",gs_reshape)
#tf.summary.image("c", c_reshape, max_outputs=5)
c_summary=tf.summary.image("c", c_reshape, max_outputs=5)

# step 2: merge
merged = tf.summary.merge_all()

init = tf.global_variables_initializer()

with tf.Session() as sess:
    writer = tf.summary.FileWriter('./graph',sess.graph)
    sess.run(init)
    summary=sess.run(merged)
    writer.add_summary(summary)
```









#### Reference
1. [tensorboard lesson](https://www.easy-tensorflow.com/tf-tutorials/basics/introduction-to-tensorboard)
