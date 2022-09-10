--- 
layout: post 
title: "Java: Enum" 
keywords: [] 
description: 
category: "PL"
tags: ["java","compile"]
--- 
{% include JB/setup %}


#### intro
枚举类型反编译之后也是类，该类用final关键字修饰
<hr />
#### 产生原因
```java
//枚举类型的引入
class Weekday{
	private Weekday(){};
	public static final Weekday MONDAY= new Weekday();
	public static final Weekday TUESDAY= new Weekday();
	public static final Weekday WENDESDAY= new Weekday();
	public static final Weekday THURSDAY= new Weekday();
	public static final Weekday FRIDAY= new Weekday();
	public static final Weekday SATURDAY= new Weekday();
	public static final Weekday SUNDAY= new Weekday();
}
```
<hr />
#### 使用
```java
enum Sex{
	BOY,GIRL;
}
//toString()方法返回子面值
System.out.println(Sex.BOY.toString());
```
