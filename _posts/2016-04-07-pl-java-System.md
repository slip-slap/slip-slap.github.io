--- 
layout: post 
title: "Java: Array" 
keywords: [] 
description: 
category: "PL"
tags: ["java"] 
--- 
{% include JB/setup %}


##### arraycopy
查看源代码里面使用的是native方法，看不到底层代码，里面应该维护指针
<hr />
<font color="red">数组拷贝</font>
```java
void foo(){
    int[] src=new int[]{1,2,3,8,23,5,3,7,8};
	int[] dest=new int[10];
	System.arraycopy(src, 2, dest, 3, 5);
	System.out.println(Arrays.toString(dest));
}
```
<hr />
##### 系统属性
+ 属性名        属性值
+ java.version  Java运行时的环境版本
+ java.home     Java安装目录
+ os.name       操作系统的名称
+ os.version    操作系统的版本
<hr />
```java
String user=System.getProperty("java.version");
```
<hr />
