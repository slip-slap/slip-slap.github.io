---
layout: post
title: "C++: Class"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---

{% include JB/setup %}

### 封装

类的定义可以使用struct或者class关键字，struct是从c继承来的  
使用class定义类，则定义在第一个访问标号前的任何成员权限都为private  
使用struct定义类，则都为public，其他没差。  


java的类更像是c++类的一种简化。c++中的类能够控制在初始化，复制，赋值和销毁对象时发生的操作。java的类没有这种能力。<br/>
python, java和c++中，都隐约存在this指针这个概念。</br>
只不过，java和c++都隐藏的比较深一点。对于 属于对象的成员函数来说，都有对象的指针与他们绑定
在一起，这个参数是隐藏。python就比较干脆了，告诉你有这个指针，即为self，调用的时候，不需要
指明。
<font color="red">代码段1</font>

```cpp
#include <iostream>
namespace HY{
	class Sales_item{
	public:
		//const成员不能改变其所操作的对象的数据成员，const必须同时出现在声明和定义中。
		double avg_price() const;
		bool same_isbn(const Sales_item &rhs) const{
			return isbn==rhs.isbn;
		}
		//构造函数的初始化列表
		Sales_item(): units_sold(0),revenue(0.0){}
	private:
		std::string isbn;
		unsigned units_sold;
		double revenue;
	};	
}
```

#### 1. Constructor
定义: 类通过一个或几个特殊的成员函数来控制其对象的初始化过程，这些函数叫做构造函数<br />
+ 编译器默认会为类合成无参数的构造函数，如果类自己定义了构造函数，编译器不再提供无参构造函数

```cpp
class Foo{
	Foo(int a){
		std::cout<<"one parameter constructor"<<std::endl;
	}	
}
//定义类
Foo f1;    //错误，编译器不会再提供无参数的构造函数
Foo f2(0);
```

<hr />
#### 拷贝构造函数

定义: 如果一个构造函数的第一个参数是自身类类型的引用，且任何额外参数都有默认值，此构造函数为拷贝构造函数<br />
+ 如果类定义只有一个参数且该参数类型为自身类类型的引用，编译器不再为该类提供默认拷贝构造函数。<font color="blue">如果类定义了重载的拷贝构造函数，即参数不同的构造函数，编译器还会合成只有一个参数是自身类类型的引用拷贝构造函数，这与构造函数不一样，构造函数是只有类定义的有构造函数，编译器就不再合成</font>
<hr />

```cpp
class Foo{
	Foo(Foo& instance, int a){
		std::cout<<"copy constructor"<<std::endl;
	}	
}
//定义类
Foo f1;
Foo f2(f1)  //正确编译器还是会合成，只有一个自身类引用的构造函数
```

<hr />
#### 拷贝赋值运算符

定义: 如果类未定义自己的拷贝赋值运算符，编译器会为它合成一个<br />

<hr />

#### 移动构造函数

<hr />

#### 移动赋值运算符
定义: 移动赋值

<hr />

#### 2. Destructor
定义: 析构函数执行与构造函数相反的操作:,构造函数初始化对象的非static数据成员;析构函数释放对象使用的资源，并销毁对象的非static数据成员
#### const成员函数

<font color="green">上段代码1中,isbn函数参数列表后有const关键字，
const的作用修改this指针的类型</font>
默认情况下，this的类型是指向类类型非常量版本的常量指针，在Salesdata成员函数
中，this的类型是Salesdata \*const<br />
尽管this是隐士的，需要遵循初始化规则。<font color="green">我们不能把
this绑定到一个常量对象上, 我们不能在一个常量对象上调用普通的成员函数</font>
<font color="red">代码段2</font>

```cpp
class Sales_data{
	public:
	    Sales_data(){
	    std::string isbn() const;
	    void non_const();
};
std::string Sales_data::isbn() const {
	    cout<<"the number of the book"<<endl;
	    return "iu";
}
void Sales_data::non_const() {
	    cout<< "nont const member function"<<endl;
}
//调用
const Sales_data demo = Sales_data();
demo.non_const();  //error:none const function is called on the const object
demo.isbn();
```

<hr />
### Inheritance

c++语言中，必须将两种成员函数区分开来<br/>
1 基类希望其派生类进行覆盖的函数，虚函数virtual<br/>
2 基类希望派生类直接继承不要改变的函数<br/>