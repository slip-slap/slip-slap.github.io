---
layout: post
title: "I.T.: Entropy"
keywords: [""]
description: ""
category: "math"
tags: ["apply","I.T."]
---
{% include JB/setup %}


#### Shannon Entropy
1. The Shannon information content of an outcome x is defined to be: <br />
$h(x)=log_2{\frac{1}{P(x)}}$
- If $P(x)=\frac{1}{64}$, then $h(x)=6$, how to understand this, it's kind of
  weired.
2. The entropy of an ensemble X is defined to be the average Shannon information
content of an outcome: <br />
$$
H(X) \equiv \sum_{x \in \mathcal{A}_{X}} P(x) \log \frac{1}{P(x)}
$$
- $H(X) \geq 0$ with equality iff $p_i=1$ for one i
- Entropy is maximized if p is uniform:
$H(X) \leq log(|\mathcal{A}_X|)$ with equality iff $p_i=\frac{1}{|\mathcal{A}_X|}$ 




the Entropy(H) is a nice measure of how uncertian the events. The Shannon Entropy measures the average
imformation that you get from one sample drawn from a given probability.It tells you how unpredictable
that the probability distribution is. <br />

actually, we can treat this function as a functional example, because a function to a value, namely, the function of a function

3. Joint entropy of X,Y is: <br />
$$
H(X, Y)=\sum_{x y \in \mathcal{A}_X \mathcal{A}_{Y}} P(x, y) \log
\frac{1}{P(x, y)}
$$


#### Relative Entropy
The relative entropy or Kullback-Leibler divergence between two probability
distributions P(x) and Q(x) that are defined over the same alphabet
$\mathcal{A_X}$ is <br />
$$
D_{\mathrm{KL}}(P \| Q)=\sum_{x} P(x) \log \frac{P(x)}{Q(x)}
$$ <br />
Gibbs' inequality, the **most** important inequality in information theory. 
$$
D_{\mathrm{KL}}(P \| Q) \geq 0
$$

Proof: Uses Jensen's inequality with $Q(x)$ instead, we define $f(u)=u\log u$
and let $u=\frac{P(x)}{Q(x)}$ <br />
$$
\begin{aligned} D_{\mathrm{KL}}(P \| Q) &=\sum_{x} Q(x) \frac{P(x)}{Q(x)} \log
\frac{P(x)}{Q(x)}=\sum_{x} Q(x) f\left(\frac{P(x)}{Q(x)}\right) \\ & \geq
f\left(\sum_{x} Q(x) \frac{P(x)}{Q(x)}\right)=f(1)=0 \end{aligned}
$$

#### Chain rule 

##### Chain rule for information content
$log \frac{1}{P(x,y)}=log{1}{P(x)}+log{1}{P(y|x)}$ <br />
so <br />
$h(x,y)=h(x)+h(y|x)$
<br />
##### Chain rule for entropy
The joint entropy, conditional entropy and marigal entropy are related by: <br />
$H(X,Y)=H(X)+H(Y|X)=H(Y)+H(X|Y)$ <br />
In words, this says that the uncertainty of X and Y is the uncertainty of X plus
the uncertainty of Y given X.

##### Mutual Information Between X and Y
$$
I(X ; Y) \equiv H(X)-H(X | Y)
$$ <br />
It measures the average reduction in uncertainty about x that results from
learning the value of y;

#### Conditional Mutual Information Between X and Y given $z=c_k$
$$
I\left(X ; Y | z=c_{k}\right)=H\left(X | z=c_{k}\right)-H\left(X | Y,
z=c_{k}\right)
$$


<img
src="{{IMAGE_PATH}}/math-apply-informtion-theory-entropy-notation-relationship-entropy.png"/>




