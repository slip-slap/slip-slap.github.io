---
layout: post
title: "C++ Keyword: static"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}


#### I
This keyword is related to the linker stage.
- The linker is not going to look outside of the scope of this translation unit
  for that symbol definiton
- kind of declaring a variable private in a class.


#### 2. function scope

```cpp
#include <iostream>
void age()
{
	static int age = 18;
	std::cout<<"age is "<< age<<std::endl;
	age++;
}

int main()
{
	age();// 18 years old
	age();// 19 years old
}
```

#### 3. struct scope

```cpp
#include <iostream>
#include <string>

struct  student
{
	static int student_number;
	std::string name;
	student(std::string name);
};

int student::student_number= 0;
student::student(std::string name)
	{
		this->name = name;
		student_number++;
	}

int main()
{
	struct student stu_riam("riam");
	std::cout<<stu_riam.student_number<<std::endl;
	struct student stu_anny("anny");
	std::cout<<stu_anny.student_number<<std::endl;
}
```


#### File Scope 

```cpp
//my_main.cpp
#include <iostream>

extern int s_variable;

void function(){
}

int main()
{
    std::cin.get();
}

//static.cpp
int s_variable = 3;
static void function()
{
}
```


#### Galois
1. This keyword is used by linker program, as you already know,there are preprocessor and
   linker stage.
2. static is used in linker stage, it will try to find this key word.




