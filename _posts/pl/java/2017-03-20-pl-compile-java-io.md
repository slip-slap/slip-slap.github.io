---
layout: post
title: "Java: IO"
keywords: []
description: "java"
category: "PL"
tags: ["java","compile"]
---
{% include JB/setup %}


## intro

流操作主要在java.io包下,类结构如下图<br />
<img src="{{IMAGE_PATH}}/io.jpg" height="600" width="428" />

<hr />

## 字节流

<hr />

### OutputStream

<hr />

#### FileOutputStream

```java
//这里的文件创建的地方要注意
File file =new File("db.properties");
if(!file.exists()){
	file.createNewFile();
}
//创建输出流，可追加
OutputStream os=new FileOutputStream("db.properties",true);
os.write(new String("hehe").getBytes());
os.write(65);//在db.properties文件中，会有大写字母A,是二进制写入
```
### InputStream
<hr />

#### FileInputStream
<hr />

## 字符流

<hr />

### Reader

<hr />
#### FileReader

```java
//“中国hello wld!”引号里面是GRE.txt文件中的内容
class Foo{
	//逐字符读取
	public void reader1() throws Exception{
		File file=new File("GRE.txt");
		if(!file.exists()){
		file.createNewFile();
		}
		Reader in=new FileReader(file);
		int word=0;
		while((word=in.read())!=-1){
			System.out.println((char)word);
		}
		in.close();
	}
	//使用缓冲区读取
	public void reader2() throws Exception{
		Reader in=new FileReader(new File("GRE.txt"));
		char[] buffer=new char[5];
		while((in.read(buffer))!=-1){
            //这个buffer很有意思，如果最后不满五个字符，会向前补给，输出的最后一行为d! wl
		    System.out.println(new String(buffer));
		}
	}
}
```
### Writer

<hr />

### 异常

#### java.net.SocketException: Broken pipe
this is caused by writing to a connection when the other has already closed it<br />

<hr />
[java.net.SocketException: Broken pipe异常](https://stackoverflow.com/questions/2309561/how-to-fix-java-net-socketexception-broken-pipe)

