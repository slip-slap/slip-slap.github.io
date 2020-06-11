---
layout: post
title: "C++ OOP: Move Semantics"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---



```cpp
#include <iostream>

class string
{
	public:
		string(const char* string)
		{
			std::cout<<"created\n";
			m_size = strlen(string);
			m_data = new char[m_size];
			memcpy(m_data,string,m_size);
		}

		string(const string& other)
		{
			std::cout<<"copied\n";
			m_size = other.m_size;
			m_data = new char[m_size];
			memcpy(m_data,other.m_data,m_size);
		}

		string(string&& other)
		{
			std::cout<<"moved\n";
			m_size = other.m_size;
			m_data = other.m_data;

			// move semantics not finished
			other.m_data = 0;
			other.m_data = nullptr;
		}

		~string()
		{
			delete m_data;
			std::cout<<"destroyed\n";
		}

		void print()
		{
			for(uint32_t i=0; i<m_size;i++)
			{
				printf("%c",m_data[i]);
			}

		}

	private:
		char* m_data;
		uint32_t m_size;
};


class entity{
	public:
		entity(const string& name)
			:m_name(name)
	    {
		}

		entity(string&& name):
			m_name((string&&)name)
		{
		}

		void print_name()
		{
			m_name.print();
		}

    private:
		string m_name;
		
};

int main()
{
 entity me = entity("zhang");
 me.print_name();
 std::cin.get();
}
```

