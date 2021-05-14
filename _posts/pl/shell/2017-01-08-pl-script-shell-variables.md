--- 
layout: post 
title: "Shell: Variables" 
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"] 
--- 
{% include JB/setup %}


#### 1. Intro
1. Variable names are case-sensitive
2. their values are of type string
- reference
- Unlike some other programming languages, the shell does not care about the
  type of data assigned to a variable; it treats them all as strings.


##### 1.1 Example

```shell
a=z					# assign the string "z" to variable a.
b="a string"		# embedded spaces must be within quotes.
d=$(ls -l foo.txt)  # results of a command
```


##### 1.2 Example

```shell
filename="myfile"
touch $filename
mv $filenmae $filename1
# this attempt fails because the shell interprets the second argument of the mv
# command as a new variable, the problem can be overcome this way
mv $filename ${filename}1
# by adding the surrounding braces the shell no longer the trailing **1** an
part of variable name.
```

- evaluated inside a quoted arguement

```cmake
"${variable_name}/directory"
```

#### 2. Environment variables

1. Every installed program maybe registered or need some system environment variables.
-  for example, the pkgconfig need **PKG\_CONFIG\_PATH** infromation

```shell
" check all the environment variables in this machine
env
```


#### Reference
1. [system environment variables](https://linuxize.com/post/how-to-set-and-list-environment-variables-in-linux/)
