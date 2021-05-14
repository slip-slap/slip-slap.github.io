---
layout: post
title: "Python: Argparse"
keywords: []
description: ""
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}


#### 1. Introduction
该module主要有两个参数分别为Positional arguments和Optional arguments<br/>
- positional arguments mandatory
- optional arguments   optional
- difference: positional arguments使用时候前没有'-'或者'--'符号，参数只要一个就是它本身<br/>
     optional arguments前面有'-'和'--',后面有别的参数


#### 2. Example

##### 2.1 positional arguments

```python
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("echo")
dict = parser.parse_args()
if dict.echo:
    print(dict.echo)
```

##### 2.2 optional arguments

```python
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("-v", "--version", help="display version number")
# 返回的应该是一个字典，如果命令行中有该参数，则存储参数值，没有为None
dictionary = parser.parse_args()
if dictionary.version:
    print("fuck off")

```

```python
import argparse

parser = argparse.ArgumentParser()

# positional argument, default datatype is string
parser.add_argument("position_argument1", help="this is the first positional argument", type=int)

# optional argument
parser.add_argument("-a","--apple", help="what js the first optional argument")
# when an optional with the [required] attribute, it becomes an mandotary
parser.add_argument("-b","--banana", required=True, help="optional argument which are mandatory")

args = parser.parse_args()

print("---------------------------------")
print("this is echo", args.position_argument1**2)
# b is short for banana, the args object only has [banana] attribute
# but without the [b] attribute
print("this is banana", args.banana
```


#### Reference
1. [argparse tutorial](https://docs.python.org/3/howto/argparse.html#introducing-positional-arguments)
