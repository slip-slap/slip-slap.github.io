---
layout: post
title: "C++ OOP: Class"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---

{% include JB/setup %}

####
1. why data is modified by private ? function is modified by public?
- just like a car, it has button you can push, the button is like a function,
  it's public.
- But what's in the button, you have no idea. It's the data which is private.

```cpp
#include <algorithm> // std::copy
#include <cstddef> // std::size_t
#include <iostream>
class String{
	public:
		String(char* char_arr);
		String(const String& other);
		String(String&& other);

		~String();

		// it is a member function
		String& operator=(String other);
		String& operator+(const String& other);

		friend void swap(String& fst, String& sec);
		friend std::ostream& operator<<(std::ostream& out, String& other);

	private:
		std::size_t m_Size;
		char* m_Array;

};


int main(){
	char* liam = new char[5];
	char* joana = new char[6];
	std::memcpy(liam,"liam",4);
	std::memcpy(joana,"joana",5);
	//for(int i=0;i<5;i++){std::cout<<liam[i];}
	String name1(liam);
	String name2(joana);
	std::cout<<name1+name2;
	return 0;
}

String::String(char* char_arr)
{
	m_Size = std::strlen(char_arr) +1;
	m_Array = new char[m_Size];
	std::memcpy(m_Array, char_arr, m_Size);
	std::cout<<"construstor"<<std::endl;
};

String::String(const String& other)
{
	m_Array = new char[other.m_Size];
	std::cout<<"copy construstor"<<std::endl;
	std::copy(other.m_Array, other.m_Array+m_Size, m_Array);
}
String::String(String&& other){
	std::cout<<"move semantics"<<std::endl;
}

String::~String(){
			delete[] m_Array;
		}
String& String::operator=(String other){
	std::cout<<"assignment operator"<<std::endl;
	swap(*this, other);
	return *this;
}

String& String::operator+(const String& other){
	m_Size= other.m_Size + m_Size;
	std::copy(other.m_Array, other.m_Array+other.m_Size-1, m_Array+4);
	return *this;
}

std::ostream& operator<<(std::ostream& out, String& other){
	std::cout<<other.m_Array<<std::endl;
	return out;
}

void swap(String& fst, String& sec){
		std::swap(fst.m_Size, sec.m_Size);
		std::swap(fst.m_Array, sec.m_Array);
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


