--- 
layout: post 
title: "C++: Array" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}

#### 1. Definition
An array is a series of elements of the same type placed in contiguous memory
locations than can be individually referenced by adding an index to a unique
identifier.

```cpp
#include <iostream>
int main()
{
	int i_arr[4]={1,2,3,4};
	double d_arr[4]={1,2,3,4};

	std::cout<<"address is : "<< i_arr << std::endl;
	std::cout<<"address is : "<< &i_arr << std::endl;// they are the same

	std::cout<<i_arr<<" "<<i_arr+1<<std::endl; // increase by the length of an
	int
	std::cout<<d_arr<<" "<<d_arr+1<<std::endl; // increase by the length of an
	double
}
```

a and &a are the same address.


##### 1.1 Operation:  Array length

```cpp
#include <iostream>

void pass_pointer(int* arr){
	//this grammer is also wrong
	int arr_size = sizeof(arr)/sizeof(*arr);
	std::cout<<"array size is:  "<<arr_size<<std::endl;
}

int main(){
	int i_arr[4]={1,2,3,4};
	int arr_size = sizeof(i_arr)/sizeof(*i_arr);
	// only work here
	std::cout<<"array size is:  "<<arr_size<<std::endl;
	// it doesn't work for pointer
	int * i_arr2 = new int[4];
	// actually this grammer is wrong
	int arr_size2 = sizeof(i_arr2)/sizeof(*i_arr2);
	std::cout<<"array size is:  "<<arr_size2<<std::endl;
}

```




##### 1.2 Operation: array iterate

```cpp
#include <iostream>

int main(){

    // stack
    int a[5]={1,3,5,2,0};
    int *b;

    //heap
    b = new int[5];
    for(int i=0; i<5; i++){
       std::cout<<b[i]<<std::endl;
       std::cout<<*(b+i)<<std::endl;
    }
}
```

2. Two dimensional array

```cpp
#include <iostream>

void test(int** a) 
{
	for(int i=0;i<5;i++)
	{
		for(int j=0;j<5;j++)
		{
			std::cout<<a[i][j]<<" ";
		}
		std::cout<<std::endl;
	}
}
int main()
{
	int** my_arr;
	for(int i=0;i<5;i++)
	{
		*my_arr = new int[5];
		 my_arr++;
	}
	test(my_arr);
	return 0;
}
```

##### 1.5 Operation: array copy

1. In c style, you can use memcpy. This does a raw memory copy.

```cpp
int a[]={1,2,3,4};
int b[4];
memcpy(b, a, 4*sizeof(int));
```
2. In c++, memcpy is not allowed, the function is std::copy

```cpp
// In c++ 11
std::copy(std::begin(a), std::end(a), std::begin(b));
```
3. In c++, you rarely should use raw array, you should use one of the standard
   containers, std::vector, which is the closet to the bullet-in array. 

```cpp
std::vector<int> vc(a, a+4);
std::vector<int> vb=va;

// this initialization is only valid in C++11
std::vector<int> a {3,2,5,4}; // no equal sign;
// specify size
std::vector<int> b(6);
```


```cpp
#include <iostream>
#include <vector>

std::vector<int>& copy_part(std::vector<int>& vec){
	std::vector<int>* cpy_vec = new std::vector<int>();
	for(std::vector<int>::iterator itr=vec.begin(); itr!=vec.end(); itr++){
		if(*itr == 6){
			cpy_vec->push_back(*itr);
		}
	}
	std::cout<<"copy element"<<std::endl;
	return *cpy_vec;
}

void print_vec_container(std::vector<int> &vec){
	for(std::vector<int>::iterator itr=vec.begin(); itr!=vec.end(); itr++){
		std::cout<<*itr<<std::endl;
	}
}

int main(){
	std::vector<int> vec{4,6,3};
	std::vector<int> cpy_vec = copy_part(vec);
	print_vec_container(vec);
	print_vec_container(cpy_vec);
}

```


##### 1.3 Function Parameter

1. In c, we pass array to a function, it is treat as a pointer, we must pass the
   size of array as the parameters, this is compulsory.

```cpp
void print_array(int* arr, int size);
int main(){
	int arr[3] = {1,2,5};
	print_array(arr, 3);
}
```

2. Return value
- You can't return a bulltin array in C++;
- You can add a second argument as the return.

```cpp
void foo(int arr_in, int* arr_out, int size){}
```





1. Remark: Increasing Array Size
- why array size can not increase directly?
- Because the memory of array is contiguous. If you increase the size at the end
  of current array. You don't know whether the following address is used by the
  other program.
- so the only way is create a big array.



#### 2. C-sytle and C++ version





#### 3. Reference
1. [Array c++](http://www.cplusplus.com/doc/tutorial/arrays/)
2. [Array length](https://stackoverflow.com/questions/4108313/how-do-i-find-the-length-of-an-array)
3. [Array option](https://stackoverflow.com/questions/16137953/is-there-a-function-to-copy-an-array-in-c-c)
4. [Passing array to a function in C](https://www.geeksforgeeks.org/how-arrays-are-passed-to-functions-in-cc/)
5. [Return an array](https://stackoverflow.com/questions/8745260/c-return-array-from-function)



