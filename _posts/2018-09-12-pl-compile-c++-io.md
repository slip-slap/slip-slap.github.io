---
layout: post
title: "C++: IO"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Stream
1. to access data that from outside of a program 
- Inputstream: access data from outside of a program.
- Outputstream: send data out of the program. 
2. so we have IOS, which means:
- Inputstream: istream, ifstream
- Outputstream: ostream, ofstream
- cin is an object of istream, cout is an object of ostream.


#### Example

```cpp
#include<fstream>
int main()
{
	std::ofstream out("file.txt");
	out<<"hello world!"<<std::endl;
	out.clear();
}
```

#### Read

```cpp

#include<fstream>
#include<iostream>

int main()
{
	std::ifstream ifs("file.txt");
	if(!ifs.is_open())
	{
		std::cout<<"can't open"<<std::endl;
	}

	while(!ifs.eof())
	{
		std::string cart;
		ifs>>cart;
		std::cout<<cart<<std::endl;
	}

	std::cout<<"end of file" <<std::endl;
	ifs.close();

}
```

##### MSB && LSB

most significant bit和least significant bit，前者采用Big endian方式存储数据，后者采用little endian存储数据<br/>
CPU有两大派系, IBM的Power PC和Inter的x86系列。PowerPC采用big endian，x86采用littleendian 存储数据。苹果电脑自2005年起，旗下电脑转用Intel CPU

<hr />

##### 文本文件和二进制文件

<font color="red">代码段1</font>

```cpp
文本文件和二进制本质上都是用0和1表示的。
int a = 12000//采用二进制的方式存储，仅占用4个字节
			 //文本存储需要五个字节。
```

<hr />
#### strinstream
主要用来使字符串和数值之间的转换


```cpp
//字符串转数值
int a=1234;
std::ostringstream ss(a);
ss.str()
//数值转字符串
std::istringstream ss(str);
double value;
ss>>value;
```
<hr />

#### 文件流
<font color="red">代码段3</font>

```cpp
//绑定输出流，如果文件不存在，则会创建该文件。
std::ofstream out("output.txt");
//setw()只对其后面紧跟的输出产生作用
out<<setfill('*')<<setw(5)<<4;
std::ifstream in("input.txt");
while(in.eof()){
	double x;
	in>>x;
}
```
