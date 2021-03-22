---
layout: post
title: "CMake: Syntax"
keywords: []
description: "python"
category: "PL"
tags: ["cmake","script"]
---


#### Syntax
1. CMakeLists files follow a simple syntax consisting of comments, commands, and
   white space
2. A command: consists of the command name, opening parenthesis, white space
   separated arguments and a closing parenthesis.
3. All white space are ignored except to separated arguments.


#### Variable
1. Variables are the basic unit of storage in the CMake Language. Their values
   are always of string type
2. **set()** and **unset()** commands explicitly set or unset a variable.
3. variable names are case-sensitive 

##### ${} and "${}"
1. ${}: means variable reference, and is evalued inside a quoted argument or an unquoted argument.
A variable reference is replaced by the value of the variable, or by the empty string if the
variable is not set.


#### Invoke
To invoke a command you write the command name and some words between parentheses. However, these
words do not correspond to the arguments the command receive in a one-to-one fashion
1. Each word become zero or more arguments, and all the arguments get concatenated together.
2. Unless a word is quoted, it is treated as a list and is expanded to multiple arguments
3. A quoted word always becomes a single argument.

#### Project Command
1. If no languages specified then CMake defaults to supporting C and C++
2. if **NONE** language is passed then CMake includes no language specific
   support
3. Whenever C++ language support is specified then C language support will also
   be loaded

```cmake
project (projectname [CXX] [C] [Java] [NONE])
```

#### Flow Control

1. if (variable): True if the variable's value is not **empty,0,FALSE** or
   **NOTFOUND**
2. if (NOT variable)
3. if (variable1 AND variable2)
4. if (variable1 OR variable2)
5. if (COMMAND command-name): True if the given name is a command that can be
   invoked
6. if (DEFINED variable): True if the given variable has been set, regardless of
   what value it was set to

##### Conditional Statements

```cmake
if (FOO)
	# do something
else (FOO)
    # do something else
endif (FOO)
```


#### Environment Variables
1. Environment Variables are like ordinary Variables, with the following
   differences:
- Scope: Environment variables have global scope in a CMake process. They are
never cached.
- Initialization: Initial values of the CMake environment variables are those of
  the calling process. Values can be changed using the **set()** and
  **unset()** commands. 



#### comment
1. line comment: #
2. block comment: #[[ ]]



