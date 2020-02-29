---
layout: post
title: "Abstract Algebra: Group Theory"
keywords: [ "group"]
description: ""
category: "math"
tags: ["structure"]
---
{% include JB/setup %}


#### Group Definition
group: set of elements 
1. Operation: *   such as, addition, multiplication
2. Closed under Operation: *
3. Inverses: inverses exists for all x 
4. Identity element: e
5. associative: $$(A\ast B)\ast C$$=$$A\ast (B\ast C)$$

##### Remark
why we need these properties ? <br />
The answer is we want to solve equation. <br />
<img src="{{IMAGE_PATH}}/abstract-algebra-group-reason.png">


we say elements, not numbers, because elements are more abstract.
Identity element: an element that leaves any element of the set to which it belongs unchanged when combined with it by a specified operation.
such as 0 in the set of all integers under addition or 1 in the set of positive integers under multiplication.
<br />

<img src="{{IMAGE_PATH}}/abstract-algebra-group.png">
<br />

#### remark
According to group definition, group may not be commutative, which means: <br />
$$x\ast y \neq y \ast x $$

#### Abelian Group
Given G is a group, if G is commutative, then G is called **commutative group**
or **Abelian Group**  <br /> If G is not commutative, then G is called
**noncommutative group**.
1. Convention, most of the time, when we talk about commutative groups,we will
   write the star as addition(+), that's convenient for commutative groups.

#### Subgroup
H is used to denote subgroup, why, because H after G in alphabet ahahaha...
Don't say mathematician are predictable <br />
1. $$H \leq G$$ can be read H is a subgroup of G.
2. $$H < G$$  H is a proper subgroup of G.

#### terminology 4:  Order
The order of groups is the number of elements in the group.

#### terminolgy 5: Cayley Tables
Properties:
1. Every row/column contains identity element
2. Symmetric about diagonal, if the group is abelian.
3. No duplicate elements in row and columns
<br />

<img src="{{IMAGE_PATH}}/abstract-algebra-cayley-table.png">
<br />
##### Examples: Order 3
<img src="{{IMAGE_PATH}}/abstract-algebra-caey-table-order3.png">

#### Subgroup
Gaussian used to partition the number integer into a few sets by mod, and treat new sets as a new number. <br />
In group theory, this can be done by **normal group** ,and the result is **quotient group**. <br />
1. In general, we can define the following:
$$
Z_n for n=1,2,3,\cdots
Z_n = {0,1,\cdots,n-1}
$$
The operation is + = addition(mod n) <br />
Here, the symbol + means group operation for expecially for commutative group.
Actually group operation is addition plus mod n


For example, Z mod 5, the following is the amazing part: we get five new numbers **0,1,2,3,4**. <br />
1. r=0: $${\cdots,-15,-10,-5,0,5,10,15,\cdots}$$
2. r=1: $${\cdots,-14,-9,-4,1,6,11,16,\cdots}$$
3. r=2: $${\cdots,-13,-8,-3,2,7,12,17,\cdots}$$
3. r=3: $${\cdots,-12,-7,-2,3,8,13,18,\cdots}$$
3. r=4: $${\cdots,-11,-6,-1,4,9,14,19,\cdots}$$
The amazing thing is the five numbers form a new group under addition. <br />
1. The identity number is r=0: <br />
2. each set has an inverse: r=1 and r=4, r=2 and r=3

Using the group theory:
<br />
<img src="{{IMAGE_PATH}}/abstract-algebra-subgroup.png">
<br />

In here, the group operation <br />
$a \times b = (a+b)mod(5)$

#### concept

Groups, rings, and fields are familiar objects to us, we just haven't used those terms. Roughly, these are all sets of elements with additional structure
(that is, various way of combining elements to produce an elements of the set)
1. group: a set in which you can perform one operation, usually addition or multiplicaation mod n for us with some nice properties.
2. ring:  a ring is a set equipped with two operations, called addition and multiplication.
3. field: a field is a group under both addition and multiplication.

#### term
1. Algebraic dual space: Given any space $$V$$ over a field $$F$$, the **algebraic dual space** $$ V^{*}$$ is defined as the set of all linear
maps 
$$
\phi: V \rightarrow F
$$

2. elements in the dual space are linear functional.


#### History
I was struggled for a pretty long time about why the word structure pops out, here !!! why why why
I don't know, finally, finally, This is explained by Galois, this name is worth to remember forever
Galios, Galois !!!!!! <br />
Galois is so insightfull, he realized that arithemtic operation on numbers just can be treated as
translation, rotation. They just abstract operation. Treat the general solution of there-order
polynomial just as a combination of translation, rotation which correspondent to like the addition,
division. <br />
He is a realy geinus.





#### reference
1. [dual space](https://en.wikipedia.org/wiki/Dual_space#Algebraic_dual_space)
2. [linear functional](https://blog.csdn.net/sumx2015/article/details/78909635)


