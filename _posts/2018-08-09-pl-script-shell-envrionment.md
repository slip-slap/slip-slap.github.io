---
layout: post
title: "Shell: Environment"
keywords: [] 
description: 
category: "PL"
tags: ["shell","script"]
---

#### Introduction
Shell maintains a body of information during our shell session called the
environment. Data stored in the environment is used by programs to determine
facts about our configuration.


#### Environment Established
1. When we log to the system, the **bash** program starts, and reads a series of
   configuration scripts called startup files, which define the default
   environemnt shared by all users.
2. This is followed by more startup files in our home directory that define our
   personal environment. The exact sequence depends on the type of shell session
   being started.
3. There are tow kinds: a login shell session and a non-log-in shell session.


```shell
cat /etc/shells
echo $SHELL
```


#### Design
1. The philosophy of shell script arise from UNIX. **Breaking complex tasks into
   simpler subtasks**
2. So the grammar in shell script seems very weird just because the way it
   works.

#### Galois
1. The role of **blank space** is completely different from other language, it's like
   you go to another country, you can't understand their language. You can't
   understand why they talk that way over this way. You confused.
2. bash interpreter treat every blank space as command delimiter. You have to
   following this row.


#### Example 1

```shell
ls - l
# this doesn't make sense, because bash interpreter will treat "-" and "l" as
commaners, but the interpreter has no idea what do they mean.
```


#### Example 2

```shell
#if [ $1 -gt 100]   
# it doesn't make sense
# interpreter will treat "100]" as command.
if [ $1 -gt 100 ]
then
	echo "this a large number"
fi
```

#### Reference
1. [Why shell programming](https://linux.die.net/abs-guide/why-shell.html)

