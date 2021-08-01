---
layout: post
title: "C++ OOP: Class"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---

{% include JB/setup %}

The following code is a what a perfect class should look like, which includes
constructor, copy constructor, assignment operator, move semantics, destructor.


```cpp
#include <iostream>
#include <vector>
#include <algorithm>

class String
{
	public:
		String(char* str, int length)
		{
			std::cout<<"constructor"<<std::endl;
			m_char = new char[length];
			m_length = length;
			std::copy(str, str+length, m_char);
		}

		String(const String& another)
		{
			std::cout<<"copy constructor"<<std::endl;
			m_char = new char[another.m_length];
			m_length = another.m_length;
			std::copy(another.m_char, another.m_char+another.m_length, m_char);
		}
		String(String&& another):
			String(another.m_char, another.m_length)
		{
			std::cout<<"move constructor"<<std::endl;
			swap(*this, another);	
		}

		String& operator=(String another){
			std::cout<<"assignment operator"<<std::endl;
			swap(*this, another);
			return *this;
		}


		friend void swap(String& first, String& sec)
		{
			std::swap(first.m_char, sec.m_char);	
			std::swap(first.m_length, sec.m_length);	
		}
		~String()
		{
			delete m_char;
			m_char = nullptr;
		}
		friend std::ostream& operator<<(std::ostream& out, String& obj)
		{
			out<<obj.m_char<<std::endl;
			return out;
		}


	private:
		char* m_char;
		int m_length;
};


int main()
{
	char name1[5]={'l','i','a','m','\0'};	
	char name2[7]={'j','o','r','d','a','n','\0'};	
	String player1(name1,5);
	String player2(name2,5);
	std::cout<<player1;
	std::cout<<player2;
	std::swap(player1, player2);
	std::cout<<player1;
	std::cout<<player2;
}
```



#### Galois
1. Static class members are treated almost exactly like global variables/functions. Because they are
   not tied to an instance. 
- There is nothing to discuss regarding memory layout.
2. Class member variables are duplicated for each instance as you can imagine, as each instance can
   have its own unique value for every member variable.
3. Class member functions only exist once in a code segment in memory. At a low level, they are just
   like normal global functions but they receive a pointer to this. With Visual studio on x86, it's
   via ecx register using thiscall calling convention.



#### Reference
1. [Move semantics](https://stackoverflow.com/questions/3106110/what-is-move-semantics#:~:text=Move%20semantics%20is%20about%20transferring,code%20uses%20the%20value%20again.)
2. [copy and swap idiom](https://stackoverflow.com/questions/3279543/what-is-the-copy-and-swap-idiom)
3. [friend keyword](https://www.programiz.com/cpp-programming/friend-function-class)


