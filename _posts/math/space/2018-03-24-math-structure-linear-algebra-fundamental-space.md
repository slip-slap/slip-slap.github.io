---
layout: post
title: "L.A.: Fundamental Subspaces"
keywords: [""]
description: ""
category: "math"
tags: ["構造","L.A."]
---
{% include JB/setup %}

#### Definition
1. Transformation: An $m\times n$ matrix A defines a linear transformation from
$V^n$ to $V^m$ by: <br />
$$
T(\vec{v}) \equiv A \vec{v}
$$
$$
\vec{v} \in V^{n} \quad T(\vec{v}) \in V^{m}
$$

#### Vector And Affine Space
A vector $\vec{v}$ is an ordered pair of points in an affine space.

#### Kernal and Image
$$
T\left(\left(\begin{array}{l}{x} \\ {y} \\ {z} \\
{w}\end{array}\right)\right)=\left(\begin{array}{cccc}{1} & {0} & {4} & {-2} \\
{1} & {-1} & {3} & {0} \\ {1} & {1} & {5} &
{-4}\end{array}\right)\left(\begin{array}{l}{x} \\ {y} \\ {z} \\
{w}\end{array}\right)=\left(\begin{array}{l}{x+4 z-2 w} \\ {x-y+3 z} \\ {x+y+5
z-4 w}\end{array}\right)
$$
$T: V^4 \rightarrow V^3$
<img 
src="{{IMAGE_PATH}}/math-structure-linear-algebra-transformation-kernal-image.png"/>

1. Kernel: A vector $\vec{v} \in V^4$ is a kernal vector for T <br />
$\leftrightarrow$ $T(\vec{v}) \in V^4$
2. Image: A vector $\vec{w} \in V^3$ is an image vector for T <br />


#### Four fundamental space
1. column space
2. row space
5. null space


