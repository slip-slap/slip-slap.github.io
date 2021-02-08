--- 
layout: post 
title: "Make: Configure Script" 
keywords: [] 
description: 
category: "PL"
tags: ["script","make"] 
--- 
{% include JB/setup %}

#### Why
A **configure script** examines your system, and uses the information it finds to convert a
**MakeFile.in** template into a **Makefile**, but where do the **configure script** come from.

1. If you've ever opened up a **configure script**, you will have seen that they are thousands of
   lines of dense shell script. Sometimes these supporting scripts are longer than teh source code
   of the program they install. 


#### Reference
1. [magic behind configure, make, make install](https://thoughtbot.com/blog/the-magic-behind-configure-make-make-install)
