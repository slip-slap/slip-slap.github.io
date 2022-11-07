---
layout: post
title: "Python TF: With M1 Pro"
keywords: []
description: 
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

####  Installation tensorflow with GPU support
1. [Download Anaconda](https://github.com/conda-forge/miniforge)
2. Create tensorflow environment
- conda create --name env\_tf python=3.9

3. install tensorflow dependence from apple
- conda install -c apple tensorflow-deps
4. install tensorflow itself
- python -m pip install tensorflow-macos

5. install tensorflow GPU support
- python -m pip install tensorflow-metal

6. install jupyter and jupyter lab
- conda install -c conda-forge jupyter jupyter-lab


#### Check Installation
```python
import tensorflow as tf
tf.__version__
tf.config.list_physical_devices()
```




