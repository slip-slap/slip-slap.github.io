--- 
layout: post 
title: "Java: BigDecimal" 
keywords: [] 
description: 
category: "PL"
tags: ["java","compile"]
--- 
{% include JB/setup %}


#### 作用
精确运算
<hr />
#### 使用方法
1. 使用String对象构建BigDecimal对象
2. 调用相应的方法进行算术运算
3. 把BigDecimal对象转换成float,double等类型
<hr />
<font color="red">代码</font>
```java
BigDecimal bd=new BigDecimal("0.06");
System.out.println(bd.add(new BigDecimal("0.01")));
```
