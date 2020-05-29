---
layout: post
title: "A.D.T.: Array"
keywords: []
description: ""
category: "CS"
tags: ["A.D.T."]
---
{% include JB/setup %}

####
1. representation is implemented by the compiler.
2. operations on their data is not given by the compiler.


#### Array ADT
1. Data
- Array Space
- size
- length
3. Operations
- display()
- add(x)
- insert(index, x)
- search(x)






#### Galois
1. computer are not born with array, they are gift provided by the compiler.
   Don't take anything for granted.



```cpp

#include <iostream>

void insert(struct Array *a, int index, int element);
void display(struct Array *a);

struct Array{
    int size;
    int length;
    int *a;
};

int main(){
    struct Array array;
    array.a = new int[20];
    array.size = 20;
    array.length = 0;

    display(&array);
    insert(&array, 0, 3);
    insert(&array, 0, 4);
    insert(&array, 0, 5);
    insert(&array, 1, 2);
    display(&array);
}

void display(struct Array *a){
    int length = (*a).length;

    for(int i=0; i<length; i++){
        std::cout<<(*a).a[i]<<std::endl;
    }
}

void insert(struct Array *a, int index, int element){
    // append the element  
    int length = (*a).length;
    (*a).a[length] = element;
    // move forward
    for(int i=length; i > index; i--){

        int temp;
        temp = (*a).a[i-1];
        (*a).a[i-1] = (*a).a[i];
        (*a).a[i] = temp;
    }
    // update length
    (*a).length = (*a).length + 1;
}

```

