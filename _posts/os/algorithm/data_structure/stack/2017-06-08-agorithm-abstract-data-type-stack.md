---
layout: post
title: "A.D.T.: Stack"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}


####
1. Data:
- space for storing elements
- top pointer

2. Operatons
- push(x)
- pop()
- isEmpty()
- isFull()
- stackTop()
- peek()



```cpp
#include <iostream>

void push(struct Stack *s, int element);
void isFull(struct Stack s);
void isEmpty(struct Stack s);

struct Stack{
    int size;
    int top;
    int *a;
};

int main(){
    struct Stack stack;
    stack.a = new int[5];
    stack.top = -1;
    stack.size= 5;
    isEmpty(stack);
    isFull(stack);
    push(&stack, 3);
    push(&stack, 3);
    push(&stack, 3);
    push(&stack, 3);
    push(&stack, 3);
    isFull(stack);
}

void push(struct Stack *s, int element){

    ((*s).a)[(*s).top+1] = element;
    (*s).top = (*s).top +1;
}

void isFull(struct Stack s){
    if(s.top == s.size - 1){
        std::cout<<"stack is full"<<std::endl;
    }else{
        std::cout<<"stack is not full"<<std::endl;
    }
}

void isEmpty(struct Stack s){
    if(s.top == -1){
        std::cout<<"stack is empty"<<std::endl;
    }else{
        std::cout<<"stack is not empty"<<std::endl;
    } 
}
```


