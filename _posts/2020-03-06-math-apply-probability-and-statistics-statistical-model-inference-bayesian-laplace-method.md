---
layout: post
title: "P.A.S.M.I.: Laplace's Method"
keywords: ["MCMC"]
description: ""
category: "math"
tags: ["sampling"]
---
{% include JB/setup %}

$$
Z_{P} \equiv \int P^{*}(x) \mathrm{d} x
$$


$$
\ln P^{*}(x) \simeq \ln
P^{*}\left(x_{0}\right)-\frac{c}{2}\left(x-x_{0}\right)^{2}+\cdots
$$

$$
Q^{*}(x) \equiv P^{*}\left(x_{0}\right) \exp
\left[-\frac{c}{2}\left(x-x_{0}\right)^{2}\right]
$$

$$
Z_{Q}=P^{*}\left(x_{0}\right) \sqrt{\frac{2 \pi}{c}}
$$

$$
Z_{P} \simeq Z_{Q}=P^{*}\left(\mathrm{x}_{0}\right)
\frac{1}{\sqrt{\operatorname{det} \frac{1}{2 \pi}
\mathrm{A}}}=P^{*}\left(\mathrm{x}_{0}\right) \sqrt{\frac{(2
\pi)^{K}}{\operatorname{det} \mathrm{A}}}
$$
