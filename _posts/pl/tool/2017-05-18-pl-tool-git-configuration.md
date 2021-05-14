---
layout: post
title: "Git: Configuration and Internals"
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}

Just as other programs, the git configuration can be divided into three level.

### 1. Configuration File
#### 1.1 System level 
1. a file named /etc/config: a file contain values applied to every use in this
 system
2. pass --system to git config, it reads and writes from this file

```shell
git config --system
```
#### 1.2 Global level

1. a file named ~/.gitconfig: values specifically to you.
2. you can make Git read and writes by passing --global option to git config.

```shell
git config --global
```

#### 1.3 Project level
1. a file named config, located in the git directory(.git/config): a file
   specific to that single repository..
2. read from and write to this file with --local option

```shell
git config --local
```


### 2. set 
#### 2.1 Your Identity
Git commit uses this information

```shell
git config --global user.name "Huiyao"
git config --global user.email zhang@123.com
```

#### 2.2 Your Editor
You can configure the default text editor that will be used when Git needs you
to type in a message. If not configured, Git uses your system's default editor.

```shell
git config --global core.editor vim
```



### 3. display
Git might read the same configuration variable from more than one file, it's
possible that you have an unexpected value for one of these values and you don't
know why. In cases like that, you can query Git as to the origin for that value.

```shell
git config --list
git config --show-origin rerere.autoUpdate
```


 
