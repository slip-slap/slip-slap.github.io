---
layout: post
title: "Python: Input and Output Stream"
keywords: []
description: "python"
category: "PL"
tags: [ "python"]
---
{% include JB/setup %}

#### what the crap is a context manager?

The main motivation behind the context manager in python is a source acquisition and release mechanism
which prevents resource leak

#### what is CSV?

CSV stands for comma separated values, it's just another plain text file.

#### Input and Output of CSV file

```python
import csv

# write file, and create a context manager
with open("me.csv",'w') as csv_file:
    # indent the code, and create a variable hold a writer object
    # the default delimiter is comma
    # the csv_file must have a 'write' method
    # you obtain csv_writer object by passing a return object of 'open()' method
    # actually, it just like the decorator pattern in Java
    # the csv.writer() method accept another object who has 'writer()' method
    # and the csv.writer() method is more powerful, it can write a list object 
    # althogh csv_file has write method, it can only write 'string object'
    # so please use csv.writer to wrap up the the return object of the 'open()' method
    # It more convient and more powerful
    csv_writer = csv.writer(csv_file,delimiter='\t')
    csv_writer.writerow(['beautiful','weired','angel'])

# read file
with open("me.csv",'r') as my_file:
    csv_reader = csv.reader(my_file,delimiter='\t')
    for i in csv_reader:
        print(i)
```


#### Inference
1. [why the context manager exists](https://mattgathu.github.io/python-context-managers/)
