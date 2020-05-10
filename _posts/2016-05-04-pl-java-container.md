--- 
layout: post 
title: "Java: Container" 
keywords: [] 
description: 
category: "PL"
tags: ["java"] 
--- 
{% include JB/setup %}
* content
{:toc}


### intro
java的容器类都在java.util包下，主要的接口
### set
#### intro
实现set接口的类主要有TreeSet

<hr />
### list
<hr />
#### intro
1. 实现list接口的有LinkedList, ArrayList, Vector, stack
2. vector和stack都是同步的，线程安全。LinkedList和ArrayList都是不同步的，线程不安全
<hr />
### 字典容器
#### intro
1. 实现map接口的有Properties, HashMap, HashTable, TreeMap
2. HashMap方法不是同步的线程不安全，HashTable是同步的线程安全
3. 线程安全的集合类 喂SHE(Vector, Stack,HashTable,Enumeration)
<hr />
#### properties
```java
File file =new File("db.properties"); //后缀名必须为properties
//检查文件是否存在
if(!file.exists()){
	file.createNewFile();
}
//创建输入流
InputStream in=Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties");
Properties p=new Properties();        //创建对象
p.load(in);     //加载资源文件
```
<hr />
#### map
<hr />
##### map的遍历
```java
//方法一
Map<Integer, Integer> map = new HashMap<Integer,Integer>();
map.put(3,5);
for(Map.Entry<Integer,Integer> entry:map.entrySet()){
	System.out.println(entry.getKey()+entry.getValue());
}
//方法二
Map<String,String> map=new HashMap<String,String>();
map.put("Alice","1003");
for(String key:map.keySet()){
	System.out.println(map.get(key));
}
for(String value:map.values()){
	System.out.println(value);
}
```

