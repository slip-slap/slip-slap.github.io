---
layout: post
title: "PL: Programming and RAM"
keywords: [""]
description: ""
category: "PL"
tags: ["summary"]
---
{% include JB/setup %}

####
1. No matter what  we are playing, one thing is very important **archtiecture**.
- assume you are the president of Hongkong, if you want to be a member of
  international game, you have to obey the rule in the name of "CHINA HONGKONG",
  that's the architecture set by China, so is Taiwan.
- You are a programmer, you have to understand the architecutre of the computer.
  Know what you can do, and what you can't.


#### Thinking
1. You are a programmer, you job is writing codes. The rest is up to computer.
2. you want to get your computer work well, you have to understand it.

#### Steps
1. in order to execute your code, your code will be loaded into the main memory.
2. In order to use the main memory in full, we use two methods to allocate
   memory, the first is called stack and the second is called heap.
- How to use stack, do we need to care about this, no we don't. Compiler will do
  this job for us.
- How to use heap, do we nee to care about this, it depends.
- If you use c++, or c, you can access the main memory by pointer, so you can
  access device, such as keyboard, network, everything, so we can do system
  programming, you can develop operation system, you can develop device drivers.
  Only because we have pointers, **You can get anywhere you want with pointers**   
- If you use Java, Python. They don't have pointers, so they are not allowed to
  access devices, you have to access them through JVM. There is no system
  programming possible for these languages.

#### Why we have this?
For a new code library is just a bundle of functions and classes. <br />
1. find the offical website about this package.
2. There is always a very mature document comes along with this a package.
3. In the document, you can find code demo about how to use this package.


#### Common Short
1. LHS: left-hand side
2. RHS: right-hand side

#### Programming Style

##### Imperatives-style VS Symbolic-style 
1. Imperative-style programs perform computation as you run them.
2. Symbolic Programs


##### Deep Learning Library and Programming Style
1. Symbolic style deep learning library include Tensorflow, Theano
2. Imperative stype deep learning library include Torch 

#### Error
1. Every programming language has its features, things are different, not every
   error goes to the same way. 

##### Latex
##### script









#### Reference 
1. [Imperative-style and Symbolic-style](https://mxnet.incubator.apache.org/versions/master/architecture/program_model.html)
