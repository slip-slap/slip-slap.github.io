---
layout: post
title: "Command: DIY"
keywords: []
description: 
category: "PL"
tags: ["script","shell"]
---
{% include JB/setup %}

#### Command Type 
In linux, nothing is secret, you can get any where and know everything. A
command can be one of the four different things:
1. An executable program, such as files we saw in /usr/bin. Within this
   category, programs can be compiled binaries such as programs written in C and
   C++, or programs written in scripting languages such as the shell, python,
   ruby.
2. A command build into the shell itself. Bash supports a number of commands
   internally called shell builtins. the **cd** command.
3. A shell function. These are miniature shell scripts incorporated into the
   envrionment.
4. An alias. Commands that we can define ourselves, built from other commands.

#### H
1. type: is a shell builtion that displays the kind of comman the shell will
   execute.

2. which: display an executeable's location
- which only works for executable programs, not builtions nor aliases that are
  substitutes for actual executable programs.
- When we try to use which on a shell builtion, for example, cd, we either get
  no response or an error message.
3. help
4. man
5. apropos
6. info
7. whatis
8. alias
