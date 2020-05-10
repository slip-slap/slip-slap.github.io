--- 
layout: post 
title: "Java: Class" 
keywords: [] 
description: 
category: "PL"
tags: ["java"] 
--- 
{% include JB/setup %}
{:toc}


类的三大特点，封装，继承和多态，集中封装和继承是多态的基础


构造器，只是一个函数，函数只是一段需要执行的代码，就这么简单。
### 类的组成
<hr />
#### 普通代码块
<hr />
#### 构造代码块
直接在类中定义且没有加static关键字的代码块称为构造代码块。
<font color="red">构造代码块属于对象</font>，在对象创建时被执行，每次创建对象都会被调用，
构造代码块的执行顺序优于类构造函数
<hr />
#### 静态代码块
java中使用static关键字声明的代码块，静态代码块用于初始化类
为类的属性初始化。每个静态块只会执行一次。<font color="red">静态代码块属于类</font>
#### 类的构造器
<hr />
##### 调用方法
1. 可以通过new关键字调用
2. 通过反射调用
<hr />
##### 区别
1. Class.newInstance() can only invoke the zero-argument constructor, while Constructor.newInstance() may invoke any constructor, regardless of the number of parameters.
2. Class.newInstance throws any exception thrown by the constructor, regardless of whether it is checked or unchecked. Constructor.newInstance() always wraps the thrown exception with an InvocationTargetException
<hr />
#### 类的方法
1. 类的方法是可以和类名同名的，和构造方法的区别是，构造方法没有返回值
