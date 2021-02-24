--- 
layout: post 
title: "OpenGL: Introduction" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","graphics programming"]
--- 
{% include JB/setup %}


#### Idea
OpenGl is by itself a large state machine: a collection of variables that define
how OpenGL should currently operate.
- The state of OpenGL is commonly referred to as the OpenGL context
- Just a fancy terminology
- We often change its state by setting some options, manipulating some buffers
  and then render using the current context.
- When working in OpenGl we will come across several state-changing functions
  that change the context and several state-using functions that perform some
  operations based on the current state of OpenGL.
- As long as you keep in mind that OpenGL is basically one large state machine,
  most of its functionality will make more sense.


#### Objects
An object in OpenGL is a collection of options that represents a subset of
OpenGL's state.



#### Introduction
1. Most implementations are built by graphics card manufactures. Whenever there is a bug in the
   implementation is usually solved by updating your video card drivers; those drivers include the
   newest versions of OpenGL that your card supports. This is one of the reasons why it's always
   advised to occassionally update your graphic drivers.







#### reference
1. [Opengl Documentation](https://docs.gl/)
