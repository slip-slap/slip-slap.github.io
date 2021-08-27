---
layout: post
title: "C++ GP:  Function Template"
keywords: []
description: "c++"
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Comilation
templates are compiled twice:
1. Without instantiation, the template code itself is checked for correct
   syntax. Syntax errors are discovered, such as missing semicolons.
2. At the time of instantiation, the template code is checked to ensure that all
   calls are valid, invalid calls are discovered, such as unsupported calls.

#### Template parameters
Function templates have two kinds of parameters:
1. Template parameters, which are declared in angle brackets before the function
   template name:

```cpp
template <typename T> // T is template parameter
```

2. Call parameters, which are declare in parentheses after the function template
   name:

```cpp
max(T const& a, T const& b) // a and b are call parameters.
```
you may have as many template parameters as you like. However, in function
templates(unlike class templates) no default template arguments can be
specified.

- the reason is mainly the result of a historical glitch in the development of
  function templates. There are probably no technical hindrances to implementing
  such a feature in modern C++ compilers, the in the future it will probably be
  available.




#### Function Template Arguments
Some template arguments can never be deduced. The corresponding parameters are
best placed at the beginning of the list of template parameters so they can be
specified explicitly while allowing the other arguments to be deduced.


```cpp
template <typename DstT, typename SrcT> in line DstT implicit_cast (SrcT const&
x)
{
	// SrcT can be deduced
	// but DstT can not
	return x;
}	

int main()
{
	double value = implicit_cast<double>(-1);
}	
```

