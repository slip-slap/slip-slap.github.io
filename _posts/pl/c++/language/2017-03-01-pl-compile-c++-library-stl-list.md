---
layout: post
title: "C++ STL: list"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Attention
1. if std::find can't find the specified element, it will return the last pointer.


```cpp
class Product{
	public:
		Product(const std::string &id, const std::string &name):m_id(id),m_product_name(name){
		}

	friend std::ostream& operator<<(std::ostream &ostream, const Product& product){
		ostream<<"id: "<<product.m_id<<",  name: "<<product.m_product_name<<std::endl;
		return ostream;
	}

	friend bool operator==(const Product& prod1, const Product& prod2){
		return prod1.m_id == prod2.m_id;
	}

	private:
		std::string  m_id;
		std::string  m_product_name;
};

int main(){
	Product prod1(std::string("001"),std::string("にゃにゃ"));
	Product prod2(std::string("002"),std::string("トトロ"));
	Product prod3(std::string("003"),std::string("コナン"));
	std::list<Product> prod_container;
	prod_container.push_back(prod1);
	prod_container.push_back(prod2);
	prod_container.push_back(prod3);

	std::list<Product>::iterator itr=std::find(prod_container.begin(), prod_container.end(), prod2);
	std::cout<<*itr;
}
```

#### Error
1. pointer being freed was not allocated.

```cpp
#include <list>
int main(){
	std::list<int> queue;
	queue.pop_back();
}
```



#### reference
1. [std::find](https://stackoverflow.com/questions/4604136/how-to-search-for-an-element-in-an-stl-list)

