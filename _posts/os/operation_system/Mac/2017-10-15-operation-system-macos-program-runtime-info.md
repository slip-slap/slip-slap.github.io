---
layout: post
title: "MacOS: Runtime Info"
keywords: []
description: 
category: "CS"
tags: []
---
{% include JB/setup %}

```cpp
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <mach/mach.h>
#include <stack>

void DisplayMemory()
{
	task_basic_info t_info;
	mach_msg_type_number_t t_info_count = TASK_BASIC_INFO_COUNT;
	task_info(mach_task_self(), TASK_BASIC_INFO, (task_info_t)&t_info, &t_info_count);
	std::cout<<"virtual size: "<<t_info.virtual_size/1024/1024<<" MB"<<std::endl;
	std::cout<<"resident size: "<<t_info.resident_size/1024<<" KB"<<std::endl;
}
```

