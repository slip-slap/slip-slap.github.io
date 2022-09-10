--- 
layout: post 
title: "C++ Library: Basic of Googletest" 
keywords: [] 
description: 
category: "PL"
tags: ["compile","c++"] 
--- 
{% include JB/setup %}

#### Types of Assertions
1. Success
2. Non-fatal Failure: EXPECT\_EQ()
3. Fatal Failure: ASSERT\_EQ()


#### Types of Test
1. Return value or Exception
2. Changes in state
3. Interaction with external component.



#### The Doubles
The doubles refer to Fake, stub, mock object, which are different classes but
not used for production.
- It doesn't really matter what you call it, and they just used as utility
  classes for testing.
