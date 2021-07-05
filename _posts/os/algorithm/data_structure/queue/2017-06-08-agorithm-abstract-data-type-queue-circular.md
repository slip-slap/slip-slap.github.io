---
layout: post
title: "A.D.T.: Circular Queue"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D.T.P."]
---
{% include JB/setup %}

#### Drawback of Queue
1. For a queue, it has two pointers, front and rear, front is for deletion, and
   rear for insertion.
2. the problem is we can only use the array for one time.


```cpp

#include <iostream>
#include <vector>

class my_queue
{
	private:
		int front = -1;
		int rear = -1;
		int size = 7;
		//static const int size = 7; this programmr will behave  very weired
		int int_array[7];
	public: 
		bool is_empty()
		   {
		    if(front == rear)
			   { 
				   return true;
			   }
			return false;
		   }

		bool is_full()
			{
					if(this->rear > this->size-1)
				    { 
					   return true;
				    }
				return false;
			}

		void enque(int x)
		{
			rear++;
			if(!is_full())
			{
				int_array[rear] = x;
				std::cout<<rear<<std::endl;
			}
		}
		
		void deque()
		{
			if(!is_empty())
			{
				int_array[front] = -1;
				front = front+1;
			}
		}

		void display()
		{
			for(int i=front;i<rear;i++)
			{
				std::cout<<int_array[i+1];
			}
		    std::cout<<std::endl;
		}

};


int main()
{
	my_queue q1;
	q1.is_empty();
	q1.enque(7); q1.enque(8); q1.enque(13); q1.enque(4); q1.enque(5);
	q1.enque(1); q1.enque(3);
	q1.display();
	q1.deque();
	q1.display();
}

```

