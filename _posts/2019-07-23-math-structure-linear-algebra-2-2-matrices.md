---
layout: post
title: "L.A.: Matrices Application(2 times 2)"
keywords: [""]
description: ""
category: "math"
tags: ["構造","L.A."]
---
{% include JB/setup %}

#### Linear Approximations to Nonlinear Maps
For Example: 
$$
T\left(\left(\begin{array}{l}{x} \\
{y}\end{array}\right)\right)=\left(\begin{array}{l}{x^{2}+y} \\
{x-y^{3}}\end{array}\right)
$$

$
T\left(\left(\begin{array}{l}{2} \\
{1}\end{array}\right)\right)=\left(\begin{array}{l}{6} \\
{7}\end{array}\right)
$


$
\vec{u}_{0}=\left(\begin{array}{l}{2} \\ {1}\end{array}\right)
$


$
\vec{u}=\vec{u}_{0}+\left(\begin{array}{l}{d x} \\ {d
y}\end{array}\right)=\left(\begin{array}{c}{2 + d x} \\ {1+d
y}\end{array}\right)
$

$
T(\vec{u})=\left(\begin{array}{l}{(2+d x)^{2}+(1+d y)(2+d x)} \\ {2(2+d
x)^{2}-(1+d y)^{3}}\end{array}\right)
$

$
\left(\begin{array}{l}{6} \\ {7}\end{array}\right)+\left(\begin{array}{l}{5 d
x+2 d y} \\ {8 d x-3 d y}\end{array}\right)
$

$
T\left(\left(\begin{array}{l}{2} \\
{1}\end{array}\right)+\left(\begin{array}{l}{d x} \\ {d
y}\end{array}\right)\right) \approx T\left(\left(\begin{array}{l}{2} \\
{1}\end{array}\right)\right)+\left(\begin{array}{cc}{5} & {2} \\ {8} &
{-3}\end{array}\right)\left(\begin{array}{l}{d x} \\ {d y}\end{array}\right)
$

The matrix 
$
\left(\begin{array}{cc}{5} & {2} \\ {8} & {-3}\end{array}\right)
$
is the derivative

#### Galois
1. Derivatives are linear transformations


