---
layout: post
title: "PL: Regular Expression"
keywords: []
description: 
category: "PL"
tags: []
---
{% include JB/setup %}

#### 1. Introcuction
1. The phrase regular expressions is also called regexes.
2. Each character in a regular expression is either a metacharacter, having a
   special meaning, or a regular character that has a literal meaning.
3. The metachacter syntax is designed specifically to represent prescribed
   targets in a concise and flexible way to direct the automation of text
   processing of a variety of input data.

#### 2. Regex Grammar

##### 2.1 Range
[259], [a-zA-Z,:]  grep '[^0-9]' passwd


##### 2.2 Repeat
1. \{n\} exactly math n times
2. \{n,\} at least match n times
3. \{n,m\} at least match n times and at most match match m times.

```shell
转义字符在[]内失去作用，‘[.]’ 表示匹配.,而不是匹配任意字符
```
3. .点号字符表示匹配任意字符
4. 边界字符

```shell
^: ^root  匹配输入字符串的开始位置， 注意与[^]的区别
$: false$ 匹配输入字符串的结尾位置
'^$' 表示空行
```

##### Metacharacter
1. \w: 匹配人体字类字符，包括下划线([A-Za-z0-9\_])
2. \W: 匹配任何非字类字符 '[^A-Za-z0-9\_]'
3. \b: 代表单词的分隔
3. \*   匹配0次或者n次
4. \\+ 匹配1次或者n次
5. \\? 匹配0次或者1次

<hr />



#### Example 

15到18位以X或者x或者数字结尾的身份证号

```shell
grep '[1-9]\([0-9]\{13\}\|[0-9]\{16\}\)[0-9Xx]' test
```

匹配密码

```shell
grep '$\w\+$'
```


#### Galois
1. Treat regex as a language to describe string, just as we use english or
   japanese or chinese to describe our life.
2. It's a language, just get use  to **metacharacter grammar**


#### Reference
1. [regex wiki](https://en.wikipedia.org/wiki/Regular_expression)
