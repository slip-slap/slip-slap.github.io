--- 
layout: post 
title: "C++: For Statement" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### Use Nested for Loop to Print
```cpp
#include <iostream>
#include <string>


void print_square()
{
	for(int i=0;i<4;i++)
	{
		int line_head = 4*i + 1;
		for(int j=0;j<4;j++)
		{
			std::string s_number = std::to_string(line_head+j);
			if(s_number.length() < 2)
			{
				s_number.append(" ");
			}
			std::cout<<s_number<<" ";
		}
		std::cout<<"\n";
	}
}


void print_upper_triangle()
{
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
           if(j>=i)
		   {
			   std::cout<<"*";
		   }else
		   {
			   std::cout<<" ";
		   }
		}
		std::cout<<"\n";
	}
}

void print_lower_triangle()
{
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
			if(j<=i)
			{
				std::cout<<"*";
			}else
			{
				std::cout<<" ";
			}

		}
		std::cout<<"\n";
	}
}

void print_transpose_triangle()
{
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
			if(j+i<3)
			{
				std::cout<<" ";
			}else
			{
				std::cout<<"*";
			}
		}
		std::cout<<"\n";
	}
}

void print_pascal_triangle()
{

	for(int i=0;i<4;i++)
	{
		for(int j=0;j<7;j++)
		{
			if(j+i<3)
			{
				std::cout<<" ";
			}else if(j+i>=3 && j<4+i)
			{
				std::cout<<"*";
			}else
			{
				std::cout<<" ";
			}

		}
		std::cout<<"\n";
	}
}

int main(){
	print_lower_triangle();
	print_transpose_triangle();
	print_pascal_triangle();
}
```
