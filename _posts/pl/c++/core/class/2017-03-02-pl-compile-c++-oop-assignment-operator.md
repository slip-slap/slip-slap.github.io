---
layout: post
title: "C++ OOP: Assignment Operator"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---

#### 1.
1. the assignment operator has to be a member function

- why? Because the default operator= provided by the compiler would always take precedence
- your friend operator= would never be called.



#### Galois
1. [why assignment has to be member function](https://stackoverflow.com/questions/3933637/why-cannot-a-non-member-function-be-used-for-overloading-the-assignment-operator#:~:text=Short%20answer%3A%20Just%20because.&text=The%20intention%20of%20operator%3D%20is,operation%20to%20the%20current%20object.&text=That%20is%20a%20case%20handled,operator%3D%20function%20could%20violate%20this.)

