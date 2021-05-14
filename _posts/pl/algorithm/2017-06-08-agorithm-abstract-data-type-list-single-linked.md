---
layout: post
title: "A.D.T.: List Implementation"
keywords: []
description: 
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}


```cpp
#include <iostream>
#include <vector>
#include <string>

struct node 
{
	std::string name;
	struct node* next_node=nullptr;
};

class link_list
{
	private:
		struct node * head;
		struct node * tail;

    public:
		link_list(){}

		link_list(std::string name)
		{
			head = new node();
			head->name = name;
			tail = head;
		}

		void insert(std::string name)
		{
			struct node* temp = new node();
			temp->name = name;
			tail->next_node = temp ;
			tail = tail->next_node;
		}

		void display()
		{
			struct node * temp = head;
			while(temp!=nullptr)
			{
				std::cout<<temp->name<<std::endl;
				temp = temp->next_node;
			}
		}

		// can't remove the last node
		void remove(std::string name)
		{
			struct node * temp = head;
			while(temp!=nullptr)
			{
				if(temp->name== name&&temp->next_node!=nullptr)
				{
					temp->name = temp->next_node->name;
					temp->next_node = temp->next_node->next_node;
				}else
				{
					temp = temp->next_node;
				}
			}
		}

};

int main()
{

	link_list my_link_list("zhang");
	my_link_list.insert("niko");
	my_link_list.insert("liam");
	my_link_list.display();
	my_link_list.remove("zhang");
	my_link_list.display();

}

```







