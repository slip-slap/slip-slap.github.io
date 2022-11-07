---
layout: post
title: "Python Envrionment Management: Conda"
keywords: []
description: "python"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

#### conda env

```python
conda create --name py39_tf --clone py39
conda env remove -n py39
```


##### Install with domestic mirror
```python
pip install openyxl -i https://pypi.tuna.tsinghua.edu.cn/simple
```


#### Download website
1. [Anaconda offical site](https://www.anaconda.com/products/distribution#windows)
2. [miniforge](https://github.com/conda-forge/miniforge)
3. [miniconda](https://docs.conda.io/en/latest/miniconda.html)


#### how to use

```shell
sudo jupyter notebook --allow-root
```


#### Galois
There are two approaches to install a software: 

1. one is system-wide installation, which envolves complex dependencies across
   your your computer. C++ is one of them, it uses system library under folder
   such as /opt/homebrew/include,
   /Library/Developer/CommandLineTools/usr/include

2. one is isolated installation, which manages all the dependencies in a
   separate environment. The vendor develop software to compatile with different
   operating system. The java virtual machine in nature is an environment, uses
   just interact this virtual machine, which covers all the implemenation
   detail. The other example, such as node, which creates the envrionment for
   javascript to run in.





#### set default brower for 

1. first, you need to generate the **jupyter\_notebook\_config.py** file by the following command

```shell
jupyter notebook --generate-config
```

2. edit the configuration file

```shell
c.NotebookApp.browser = u'open -a /Applications/Google\ Chrome.app %s'
```


#### Reference
1. [tsinghua channel](https://blog.csdn.net/Trance95/article/details/124731504)


