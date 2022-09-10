--- 
layout: post 
title: "C++ Library boost: PropertyMap" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### iterator\_property\_map
This is an adaptor that wraps a type that models *RandomAccessIterator* to
create an *LValuePropertyMap*.
1. This adaptor is often useful for creating a property map out of an array,
   where the key is an integer offset into the array, and the array contains
   value objects.
2. You need to provide a property map that converts from the the key type to an
   integer if the key type is not an integer.


```cpp
#include <iostream>
#include <boost/property_map.hpp>
	double x[] = {3,4.5, 0.9};
	boost::iterator_property_map<double*, boost::identity_property_map> pmap(x);
	std::cout<<"property map: "<<boost::get(pmap, 0)<<std::endl;
	boost::put(pmap, 0, 1.9);
	std::cout<<"property map: "<<boost::get(pmap, 0)<<std::endl;
```


