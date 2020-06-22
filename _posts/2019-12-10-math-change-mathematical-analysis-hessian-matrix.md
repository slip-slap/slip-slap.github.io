---
layout: post
title: "M.A.: Hessian Matrix"
keywords: [""]
description: ""
category: "math"
tags: ["change","M.A."]
---
{% include JB/setup %}

#### Hessian Matrix

$$
H(f)=\left[\begin{array}{cccc}{\frac{\partial^{2} f}{\partial x_{1}^{2}}} &
{\frac{\partial^{2} f}{\partial x_{1} \partial x_{2}}} & {\cdots} &
{\frac{\partial^{2} f}{\partial x_{1} \partial x_{n}}} \\ {\frac{\partial^{2}
f}{\partial x_{2} \partial x_{1}}} & {\frac{\partial^{2} f}{\partial x_{2}^{2}}}
& {\cdots} & {\frac{\partial^{2} f}{\partial x_{2} \partial x_{n}}} \\ {\vdots}
& {\vdots} & {\ddots} & {\vdots} \\ {\frac{\partial^{2} f}{\partial x_{n}
\partial x_{1}}} & {\frac{\partial^{2} f}{\partial x_{n} \partial x_{2}}} &
{\cdots} & {\frac{\partial^{2} f}{\partial x_{n}^{2}}}\end{array}\right] $$

#### application
In practice, engineering problem includes many variables is  very complicate,
Taylor expansion is used to simulates the target function. <br /> which needs
Hessian Matrix
