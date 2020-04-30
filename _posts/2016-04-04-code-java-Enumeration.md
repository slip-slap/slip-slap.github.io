--- 
layout: post 
title: "Java: Enumberation" 
keywords: [] 
description: 
category: "code" 
tags: ["java"] 
--- 
{% include JB/setup %}


#### 作用
Enumeration是一个接口,源码如下
```java
package java.util;

pubic interface Enumeration<E>{
	boolean hasMoreElements();
	E nextElement();
}
```
