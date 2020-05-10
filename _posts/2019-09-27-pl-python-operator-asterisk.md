---
layout: post
title: "Python: Asterisk Operator"
keywords: []
description: 
category: "PL"
tags: ["python"]
---
{% include JB/setup %}


#### Introduction
Asterisk plays very important role in python

#### packing the containers

review the following code 
```python
def demo(*args, **kwargs):
    print(args," and ",kwargs)     
demo('ha', 'big', third='wilson', fourth='roy')
```
1. the asterisk mark before args is not used to get the address or content such
   as in c++. 
2. **\*args** means accepting arbitrary numbers of positional arguments,
   **\*\*kwargs** means accepting arbitray numbers of keyword arguments.
3. In here, **\*args** and **\*\*kwargs** are called **packing**
4. the arguments passed as positional are stored in a tuple called **args**, the
   arguments passed as keyword are stroed in a dict called **kwargs**


#### unpacking the containers
The \* can also be used for unpacking the containers. Its principles is similar to pack the containers <br />

```python
def demo(*numbers):
    print(numbers)

primes = [2,3,5,7]
# unpack primes list
demo(*primes)
demo(primes)
```


#### Reference
1. [understanding the asterisk of python](https://medium.com/understand-the-python/understanding-the-asterisk-of-python-8b9daaa4a558)

