--- 
layout: post 
title: "Java: reflection" 
keywords: [] 
description: 
category: "code" 
tags: ["java"] 
--- 
{% include JB/setup %}


### Intro
反射是得到类的元数据的过程
<hr />
#### Class对象
1. <font color="red">编译后的字节码文件，即.class文件就是Class类的Class对象</font>
2. Java虚拟机类加载系统根据将对应Class对象加载到JVM中，根据类对象创建实例对象
<hr />
#### Class对象的加载
<hr />
##### Class.forName()
该方法的调用返回一个对应类的Class对象，无需通过持有该类的实例对象
引用而去获得Class对象。
<hr />
##### Class字面常量
1. 通过字面量的方法获取Class对象的引用不会自动初始化该类
2. 接口，数组和基本数据类型都可以通过该方法获得Class对象
