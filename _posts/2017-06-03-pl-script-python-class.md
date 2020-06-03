---
layout: post
title: "Python: Class"
keywords: []
description: "class"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}




#### create

python是有Unix shell和c的语法习惯，c是没有new关键字的，所以python也没有，创建对象直接调用构造函数。

```python
# self表示this指针
class Test:
    def my_print(self):
        print(self)
        print(self.__class__)

t = Test()
t.my_print()
Test.my_print(t)

```

#### 多态

```python
class Duck:
    def __init__(self):
	    print("__init__")
 
    def sleep(self):
        print("duck sleep")


class Fish:
    def __init__(self):
    print("__init__")
									        
    def sleep(self):
        print("fish sleep")


def animal_sleep(animal):
    animal.sleep()

duck = Duck()
fish = Fish()
for x in [duck, fish]:
animal_sleep(x)
```


#### attribute

Python is different from Java, it doesn't have the so-called getter and setter method. <br />
and why this happened, because, it doesn't need this.


```python
class Person:
    def __init__(self,name):
        self.name = name

    @property
    def name(self):
        print("get name")
        return self.name

    @name.setter
    def name(self,name):
        print("set name")
        if not isinstance(name,str):
            raise TypeError("Expected a string")
        self._name = name

person = Person("Tom")
print(person.name)
```


#### \_\_eq\_\_ and \_\_hash\_\_ function

if you create a new class in python, and you don't implement the **\_\_eq\_\_ and \_\_hash\_\_** method.
the new class will extend the default  **\_\_eq\_\_ and \_\_hash\_\_** method. what does these two methods
mean ?

1. **\_\_hash\_\_** method is used to generate the hash int value according the object.
According to the official document, The only required property is that objects which compare equal have the same hash value;
It is advised to mix together hash values of the component of the object that also play a part in comparison of objects by packing
them into a tuple and hashing the tuple. For example:

```python
def hash(self):
    return hash(self.name, self.nick, self.color)
```

#### comparison methods in python
The comparison methods were first introduced in Python2.1 and they are also called **comparison magic methods**
It's kind of like operator reload

```python3
#object.__lt__(self, other) # For x < y
#object.__le__(self, other) # For x <= y
#object.__eq__(self, other) # For x == y
#object.__ne__(self, other) # For x != y OR x <> y
#object.__gt__(self, other) # For x > y
#object.__ge__(self, other) # For x >= y

# define class
class Point:
    def __init__(self,x,y):
        self.x = x
        self.y = y
        
    def __eq__(self,other):
        print("this is equal")
        distance = (self.x - other.x)*(self.x - other.x) + (self.y - other.y)*(self.y - other.y)
        if np.sqrt(distance) < 0.01:
            return True
        else:
            return False
        
    def __lt__(self,other):
        print("this is less than")
        return True
        
    def __hash__(self):
        print("this is hash")
        return hash((self.x, self.y))

# define points
a = Point(1,2)
b = Point(3,4)
c = Point(3,4.0001)

# call the __lt__ function
b < c
```






