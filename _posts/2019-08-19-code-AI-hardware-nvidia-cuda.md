---
layout: post
title: "NVIDIA, CUDA,CUDNN, and Tensorflow"
keywords: ["backpropagation", "neural network"]
description: "neural network"
category: "code"
tags: ["python" ]
---
{% include JB/setup %}

#### concept
1. CUDA: cuda short for compute unified device architecture is a parallel
   computing and application programming interface model, It allows developers
   to use a CUDA-enabled graphics processing unit(GPU) for general purpose
   processing - an approach termed GPGPU(General computing on Graphics
   Processing Units).
2. CUDNN: cuDNN is short for CUDA Deep Neural Network library is a
   GPU-accelerated library for deep neural networks. cuDNN provides highly tuned
   implementations for standard routines such as forward and backward
   convolution, pooling, normalization, and activation layers.
3. CUDA Toolkit: provides a development for creating high performance
   GPU-accelerated applications. With the CUDA Toolkit, you can develop,
   optimiza and deploy your applications on GPU-accelerated embedded systems.




#### install procedure
1. check the NVIDIA driver version. for example, Driver Version: 384.81
2. Based on the driver version, install the cuda platform, which is the cuda
   runtime version. for example, cuda 9.0 should be installed. 
```python
pip install cudatoolkit=9.0
pip install cudnn
```

#### why conflict between cuda driver version and cuda runtime version
1. before install tensorflow-gpu, the dependency relation will be checked.
2. If the version is not specified, it will automatically download the latest
   CUDA runtime version
3. That's why the conflict happens



#### reference
1. [cuda driver version and cuda runtime version](https://blog.csdn.net/li57681522/article/details/82491617)
2. [cuda toolkit and compatile driver versions](https://docs.nvidia.com/cuda/cuda-toolkit-release-notes/index.html)
3. [cudnn and compatilbe cuda toolkit](https://developer.nvidia.com/rdp/cudnn-archive)















