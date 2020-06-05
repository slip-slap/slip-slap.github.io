--- 
layout: post 
title: "Java: Copy Control" 
keywords: [] 
description: 
category: "PL"
tags: ["java","compile"]
--- 
{% include JB/setup %}


### intro
在c++中，有一章专门讲拷贝控制，java把这个问题简单化了，简化成深拷贝与浅拷贝
<hr />
### 浅拷贝
<hr />
#### 问题的产生
```java
class Foo{
	private int age;
	private Date date;
	public int getA() {
		return age;
	}
	public void setA(int age) {
		this.age = age;
	}
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Foo{" +
			"age=" + age +
			", date=" + date +
		'}';
	}
}
//test函数进行测试
void test(){
	Foo foo1=new Foo();
	foo1.setA(3);
   	foo1.setDate(new Date(100));
   	System.out.println(foo1);
   	Foo foo2=foo1;
   	foo2.setA(4);
   	foo2.setDate(new Date(200000000));
   	System.out.println(foo1);
}
```
在上面的测试中，当更改foo2的值时，foo1中的值都会发生改变，因为java在进行赋值时，拷贝的是引用，这不是我们想看到的
<hr />
#### 解决办法
```java
class Foo implements Cloneable{
	private int age;
	private Date date;

	public int getA() {
		return age;
	}

	public void setA(int age) {
		this.age = age;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public Object clone(){
		Foo foo=null;
		try{
			foo=(Foo)super.clone();
		}catch (Exception e){
			e.printStackTrace();
		}
    	return foo;
	}
	@Override
	public String toString() {
		return "Foo{" +
			"age=" + age +
			", date=" + date +
		'}';
	}
}
//测试
void test(){
Foo foo1=new Foo();
   	foo1.setA(3);
   	foo1.setDate(new Date(100));
   	System.out.println(foo1);
   	Foo foo2=(Foo)foo1.clone();
   	foo2.setA(4);
   	foo2.setDate(new Date(200000000));
   	System.out.println(foo1);
}
```
foo2的改变不会影响foo1的值，这是我们想要的
<hr />
### 深拷贝
<hr />
#### 问题的产生
引用类型的对象Foo没有实现Clone方法，foo1中引用类型的拷贝只是引用拷贝。
```java
class Test{
	String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Test{" +
		"name='" + name + '\'' +
		'}';
	}
}
class Foo implements Cloneable{
	private int age;
	private Date date;
	private Test name;

	public Test getName() {
		return name;
	}

	public void setName(Test name) {
		this.name = name;
	}

	public int getA() {
		return age;
	}

	public void setA(int age) {
		this.age = age;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public Object clone(){
		Foo foo=null;
		try{
     		foo=(Foo)super.clone();
		}catch (Exception e){
			e.printStackTrace();
		}
		return foo;
	}

	@Override
	public String toString() {
		return "Foo{" +
		"age=" + age +
		", date=" + date +
		", name=" + name +
    	'}';
	}
}
//test
void test(){
	Test test=new Test();
	test.setName("Alice");
   	Foo foo1=new Foo();
   	foo1.setA(3);
   	foo1.setDate(new Date(100));
   	foo1.setName(test);
  	System.out.println(foo1);
  	Foo foo2=(Foo)foo1.clone();
   	foo2.setA(4);
   	foo2.setDate(new Date(200000000));
   	System.out.println(foo1);
   	System.out.println(foo2);
   	test.setName("angel");
   	System.out.println(foo2);
}
```
<hr />
#### Cloneable接口实现深拷贝
该方法能实现深复制，太麻烦需要实现Clonable接口
```java
class Test implements Cloneable{
	String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public  Object clone(){
		Test test=null;
		try{
			test=(Test)super.clone();
		}catch (Exception e){
			e.printStackTrace();
		}
		return test;
	}
	@Override
	public String toString() {
		return "Test{" +
			"name='" + name + '\'' +
			'}';
	}
}
class Foo implements Cloneable{
	private int age;
	private Date date;
	private Test name;

	public Test getName() {
		return name;
	}

	public void setName(Test name) {
		this.name = name;
	}

	public int getA() {
		return age;
	}

	public void setA(int age) {
		this.age = age;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public Object clone(){
	Foo foo=null;
	try{
		foo=(Foo)super.clone();
	}catch (Exception e){
		e.printStackTrace();
	}
	//递归调用完成深复制
	foo.name=(Test)name.clone();
		return foo;
	}

	@Override
	public String toString() {
		return "Foo{" +
			"age=" + age +
			", date=" + date +
			", name=" + name +
			'}';
	}
}
//测试
void test(){
	Test test=new Test();
   	test.setName("Alice");
   	Foo foo1=new Foo();
   	foo1.setA(3);
   	foo1.setDate(new Date(100));
   	foo1.setName(test);
   	System.out.println(foo1);
   	Foo foo2=(Foo)foo1.clone();
   	foo2.setA(4);
   	foo2.setDate(new Date(200000000));
   	System.out.println(foo1);
   	System.out.println(foo2);
   	test.setName("angel");
  	System.out.println(foo2);
}
```
<hr />
#### 序列化实现深拷贝
```java
class Test implements Serializable{
	String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Test{" +
			"name='" + name + '\'' +
			'}';
	}
}
class Foo implements Serializable{
	private int age;
	private Date date;
	private Test name;

	public Test getName() {
		return name;
	}

	public void setName(Test name) {
		this.name = name;
	}

	public int getA() {
		return age;
	}

	public void setA(int age) {
		this.age = age;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Foo{" +
			"age=" + age +
			", date=" + date +
			", name=" + name +
			'}';
	}
}
//test
Test test=new Test();
   	test.setName("Alice");
   	Foo foo1=new Foo();
   	foo1.setName(test);
	//FileOutputStream序列化的结果存储在file中，ByteArrayOutputStream的结果存储在byteArray数组中
	ByteArrayOutputStream bos=new ByteArrayOutputStream();
	ObjectOutputStream    oos=new ObjectOutputStream(bos);
	oos.writeObject(foo1);
	ObjectInputStream ois=new ObjectInputStream(new ByteArrayInputStream(bos.toByteArray()));
	Foo foo2=(Foo)ois.readObject();
	test.setName("ellen");
	System.out.println(foo1);
	System.out.println(foo2);
```
