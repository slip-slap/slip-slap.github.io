---
layout: post
title: "A.A.: Abelian Group"
keywords: []
description: ""
category: "math"
tags: ["構造","A.A."]
---
{% include JB/setup %}

#### HAHA
Every finite commutative or abelian group is isomorphic to a direct sum of
cyclic groups.

#### Isomorphism of Groups
In here, the meaning of the word isomorphism is kind of like equality, you can
understand this way. <br/>
Definition: Groups G, H are isomorphic, written 
$G \simeq H$, if we can find a bijection,$\phi G \rightarrow H$, satisfying
$
\begin{array}{l}{\varphi\left(e_{G}\right)=e_{H}} \\ {\varphi\left(g_{1} \times
g_{2}\right)=\varphi\left(g_{1}\right) * \varphi\left(g_{2}\right)} \\
{\varphi\left(g^{-1}\right)=(\varphi(g))^{-1}}\end{array}
$

for commutative groups, written additively: <br />

$
\begin{array}{l}{\varphi\left(O_{G}\right)=O_{H} \\ 
\varphi\left(g_{1}+g_{2}\right)=\varphi\left(g_{1}\right)+\varphi\left(g_{2}\right)}
\\ {\quad \varphi(-g)=-\varphi(g)}\end{array}
$

#### Example
$
\begin{array}{l|llll}{x} & {1} & {a} & {b} & {c} \\ \hline 1 & {1} & {a} & {b} &
{c} \\ {a} & {a} & {1} & {c} & {b} \\ {b} & {b} & {c} & {1} & {a} \\ {c} & {c} &
{b} & {a} & {1}\end{array}
$ <br />

$
\begin{array}{l|llll}{+} & {(0,0)} & {(1,0)} & {(0,1)} & {(1,1)} \\ \hline 1 & {1} & {a} & {b} &
{c} \\ {a} & {a} & {1} & {c} & {b} \\ {b} & {b} & {c} & {1} & {a} \\ {c} & {c} &
{b} & {a} & {1}\end{array}
$ <br />
The map: <br />

$
\begin{array}{l}{\varphi: 1 \rightarrow(0,0)} \\ {a \rightarrow(1,0)} \\ {b
\rightarrow(0,1)} \\ {c \rightarrow(1,1)}\end{array}
$


#### Order of An Element
The order of An element $g \in (G,\ast)$ is the least positive integer n
satisfying <br />
$
\underbrace{g * g * \cdots * g}_{n}=e
$ <br />
$ord(g) = n$

1. in $Z_4$, ord(0)=1, ord(1)=ord(3)=4,ord(2)=2 
2. in $Z_2 \oplus Z_2$, order((0,0))=1, order((1,0))=order((0,1))=2

#### Automorphism of a Group
Def: An isomorphism $\varphi G \rightarrow G$ is an automorphism of G.

#### Homomorphism between groups G and H



#### Quotient Group
1. Normal subgroup itself is a coset
2. Cosets are not overlap
3. The motivation for the name "quotient" comes from division of integers. When
   dividing 12 by 3 one obtains the answer 4 because one can regroup 12 objects
   into 4 subcollections of 3 objects. The quotient group is the same idea,
   alough we end up with a group for a final anser instead of a number because
   groups have more structure than an arbitrary collection of objects.
4. To elaborate, when looking G/N with a normal subgroup of G, the group
   structure is used to form a natural "regrouping". These are the cosets of N
   in G. Because we started with a group and normal subgroup, the final quotient
   contains more information than just the number of cosets(which is what
   regular division yields), but instead has a group structure itself.

$$
\mathbb{Z} / \mathrm{H}=\{\mathrm{H}, 1+\mathrm{H}, 2+\mathrm{H}\}
$$

#### Free Abelian Group
This theory is a lot like that of vector space, rank kinds of like dimensions



#### Galios
1. Quotient Group, Group, the result after the operation of Quotient is A **group,
Group, Group**
2. You can see, how insightfull these mathematican is !!! They extends the
   meaning of quotient and generalize this concept.


#### Reference
1. [Free mean](https://math.stackexchange.com/questions/1426691/what-does-the-free-in-free-abelian-group-or-free-group-mean)



