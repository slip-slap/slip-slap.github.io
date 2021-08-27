---
layout: post
title: "C++: Keywords"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### explicit
c++为只用传递一个参数的构造函数定义了一个隐士转换

```cpp,monokai
class Animal{
	public:
	    Animal(){
        cout<<"no parameter constructor"<<endl;
        }
	    explicit Animal(int a){
	    cout<<"parameter constructor"<<endl;
	    }
};
Animal dog = 3         //报错，无法使用explicit Animal构造器
```

```
class Animal{
	public:
	    Animal(){
        cout<<"no parameter constructor"<<endl;
	    }
	    Animal(int a){
        cout<<"parameter constructor"<<endl;
	    }
};
Animal dog = 3        //隐士调用Animal(int a)构造函数
```


#### auto

```
list<Point2d> container;
Point2d p1( 0,-1);
container.push_back(p1);
//下面的做法并不会改变容器内的值,因为var不是指针，也是引用; 
for(auto var:container){ 
	var.x=1;
	var.y=2;
}
//正确示范
for(auto itr=container.begin();itr!=container.end();itr++){
    itr->x=itr->x/x_border;
    itr->y=itr->y/y_border;
}
```

#### char
ANSI C提供了三种字符类型, char, signed char, unsigned char<br/>
signed char取值范围-128-127 unsigned char取值范围0-255<br/>
char是Implementation Defined, 未明确定义。一般用signed char或者unsigned char<br/>
来实现。VC编译器和x86上的GCC把char定义为signed char, arm-linux-gcc把char定义<br/>
unsigned char

```
char a = -1;
printf("%d", a);//a等于-1,说明我的机器把char当作signed char处理
```

