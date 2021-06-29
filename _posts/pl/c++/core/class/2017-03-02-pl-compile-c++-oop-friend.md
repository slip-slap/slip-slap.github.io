---
layout: post
title: "C++ OOP: Friend"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---


#### friend function


#### friend class

```cpp
#include <iostream>
#include <ostream>

class String
{
	public:
		String() {}
	String(const char* data)
	{
		std::cout<< "constructor"<<std::endl;;
		m_Size = strlen(data);
		m_Data = new char[m_Size];
		memcpy(m_Data,data,m_Size);
	}

	String(const String& str)
	{
		std::cout<<"copy constructor"<<std::endl;
		m_Data = str.m_Data;
	}

	String& operator=(const String &data)
	{
		std::cout<< "assignment operator"<<std::endl;
		m_Data = data.m_Data;
		return *this;
	}

	friend std::ostream& operator<<(std::ostream &cout, const String &data)
	{
		cout<<data.m_Data<<data.m_Size<<std::endl;
		return cout;
	}

	private:
	char* m_Data;
	uint32_t m_Size;
};

int main()
{
	String a, b, c;
	String huiyao("huiyao");
	String player2(huiyao);
	std::cout<<huiyao<<std::endl;
	std::cout<<player2<<std::endl;
	a=b=c=huiyao;
	std::cout<<a<<std::endl;
	std::cout<<b<<std::endl;
	std::cout<<c<<std::endl;

	//int* test_arry ;
	//test_arry= new int[20];
	//std::cout<<"the 25th element: "<<test_arry[25000000]<<std::endl;
}
```





#### Galois
1. At the beginning when I learn C++, one hard part is where I should put the
   keyword, and the reason is I don't understand C++
2. This teacher explain friend in an very elegant way. 
- wirte a function in the class
- write the **keyword friend** in front of the function.
