---
layout: post
title: "C++ OOP: Constructor"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---

1. default constructor
2. move constructor
3. copy constructor
- a copy constructor is used to initilize a previous uninitilized object from
  some other's object data.

```cpp
A a
A aa=a //copy constructor;
```

4. assignment operator
- An assignment operator is used to replace previous intitilized object with
  some other's object data.

```cpp
A a
A aa 
a = aa // assign operator
```

```cpp
#include <iostream>
#include <ostream>

class String
{
	public:
		String(){}
		String(const char* str)
		{
			std::cout<<"constructor"<<std::endl;
			m_length = strlen(str);
			m_data = new char[m_length];
			std::memcpy(m_data, str, m_length);
		}
		String(const String& str)
		{
			std::cout<<"copy constructor"<<std::endl;
			m_length = str.m_length;
			m_data = new char[m_length];
			std::memcpy(m_data, str.m_data, m_length);
		}

		String(String&& str) noexcept
		{
			std::cout<<"move constructor"<<std::endl;
			m_length = str.m_length;
			m_data = str.m_data;
			str.m_data = nullptr;
		}

		String operator=(const String& str)
		{
			std::cout<<"assign operator"<<std::endl;
			m_length = str.m_length + 1;
			m_data = new char[m_length];
			std::memcpy(m_data, str.m_data, m_length);
			return *this;
		}
		friend std::ostream& operator<<(std::ostream& ostream, const String& str)
		{
			ostream<<"string is: "<<str.m_data<<" length is: "<<str.m_length<<std::endl;;
			return ostream;
		}
		~String()
		{
			std::cout<<"destroy"<<std::endl;
			delete m_data;
		}


	private:
		char* m_data;
		int m_length;
};

int main()
{
	//int* test_arry ;
	//test_arry= new int[20];
	//std::cout<<"the 25th element: "<<test_arry[25000000]<<std::endl;
	const char * name="zhang huiyao";
	String player1(name);
	String player2(player1);
	String player3 = player2; // copy constructor
	player3 = player2;// assign operator
	String player4((String &&)String("liam"));
	std::cout<<player1<<std::endl;
	std::cout<<player2<<std::endl;
	std::cout<<player3<<std::endl;
	std::cout<<player4<<std::endl;

}
```

#### Reference
1. [copy constructor and assignment operator](https://stackoverflow.com/questions/11706040/whats-the-difference-between-assignment-operator-and-copy-constructor)
