--- 
layout: post 
title: "Java: String" 
keywords: [] 
description: 
category: "PL"
tags: ["java","compile"]
--- 
{% include JB/setup %}


### 介绍
+ String类使用底层使用字符数组保存字符串，有final修饰，String对象是不可变的
+ StringBuilder和StringBuffer都继承自AbstractStringBuilder类，也使用字符串保留数组。
+ String中的对象是不可变的，可以理解为长了，线程安全。StringBuffer对方法加了同步锁，也是线程安全的
<hr />
### 功能

