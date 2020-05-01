---
layout: post
title: "CLI: Sed"
keywords: [] 
description: 
category: "linux"
tags: ["CLI"]
---
{% include JB/setup %}



####
1. \\w 数字0-9，字母a-z及A-Z，下划线 <font color="red">因为在编程语言中，数字的命名都是数字字母下划线</font>
2. \\W 非\\w
3. . 除去换行符以外的任意字符
4. \[\] 字符范围
5. \[^...\] 字符范围以外
6. ^ 行首
7. $ 行尾
8. ()  分组, 并记录匹配到的字符串
9. \n  使用分组符(x)匹配到的字符串
#### repeat
1. x\* x+ 贪婪匹配
2. x\* x+? 非贪婪匹配
3. x?      出现0次或一次

10. (?:x) 仅分组


#### Awk
#### 分割符
-F field-separator(默认为空格)
```shell
awk -F ':' '{print $3}' /etc/passwd
```



#### feature

1. the ability to filter text in a pipeline which particularly distinguishes it from other types of editors




<hr />

#### 语法

命令行格式

```shell
sed [options] 'command' file(s)
# options: -e; -n; -i
# -n: suppress automatic printing of **pattern space**
# what's the crap, what's the pattern space ? it's every text line that the sed command take in
# command: 行定位(正则)+sed命令
#  行定位可以使用行号,或者正则
# 定位一行: x; /pattern/
# 定位几行: x,y; /pattern/,/pattern/;
# 反向选择: x,y!
# 间隔行: first~step
```

<hr />
##### 增删改查

1. a 在指定行之后插入

```shell
nl passwd | sed -n '1,3a ========================'
```

2. i在指定行之间插入

```shell
nl passwd | sed -n '1,3i ========================'
```

3. 替换指定行

```shell
nl passwd | sed -n '1,3c  ========================'
```

##### 替换行内容

这是sed核心的命令

```shell
# 在使用替换命令的时候，注意参数的设置
cat temp | grep 'slipslap' | sed 's/slipslap//' | sed 's/\/.*est//' | sed 's/13.*//'

# batch substitution
# find the target
sed -n '/category: "statitics"/p' *
# replace the target
sed -i 's/category: "statitics"/category: "math"/' *
sed -i '1,9c --- \nlayout: post \ntitle: "C++: Vim" \nkeywords: []
\ndescription: \ncategory: "code" \ntags: ["c++"] \n--- \n{% include JB/setup
%}' *
```


####

脚本格式

```shell
sed -f scripgfile file(s)
```

#### 版本差异
1. in practice, you can discard the BSD based command, actually I prefer GNU style command 
2. For mac system, when you use -i parameter, you have to provide an extension for your backups.

3. explaination based on BSD platform such as Maca <br />
i extension
   Edit files in-place, saving backups with the specified extension.  If a zero-length extension is given, no backup will be saved.  It is not recommended to give a zero-length extension when in-place editing files, as you risk corruption or partial content in situations where disk space is exhausted, etc.

4. explatination based on GNU/linux platform such as Redhat <br />
   -i[SUFFIX], --in-place[=SUFFIX]
   edit files in place (makes backup if SUFFIX supplied)




```shell
sed -i 'jjj'  '1,5d' 2016-08-01-python-intro.md
```
### grep
grep命令是一种强大的文本搜索工具，使用正则表达式搜索文本，并把匹配的行打印处理
#### 语法
grep \[option\] pattern file
#### 参数
1. -c  --count    计算符合样式的列数

### sed
文本行处理，增，删，替
<hr />
#### 语法
1. sed [options] 'command' file 命令行格式
2. sed -f script file 脚本格式
#### 参数
1. -n by default, each line of input is echoed to the standard output after all of the commands have been applied to it, the suppresses this behavior
