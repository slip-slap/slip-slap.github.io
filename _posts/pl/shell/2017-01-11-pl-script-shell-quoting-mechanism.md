--- 
layout: post 
title: "Shell: Quoting Mechanisms" 
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"] 
--- 
{% include JB/setup %}


#### 1. Metacharacters

1. Unix shell provides various metacharacters which have special meaning while
   using them in any shell script.
```shell
* ? [] ' " \ $ ; & ( ) | ^ < > space tab
```

#### 2. Quoting Mechanisme
1. Single quote: All special characters between these quotes lost their special
   meaning
2. Double quote: Most special characters between these quotes lost their special
   meaning with some exceptions
3. Any character immediately following the backslash loses its special meaning.
4. Anything in between back quotes would be treated as a command and would be
   executed.

