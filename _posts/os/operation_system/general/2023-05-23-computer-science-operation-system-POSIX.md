---
layout: post
title: "OS: Portable Operating System Interface"
keywords: []
description: ""
category: "CS"
tags: ["OS"]
---
{% include JB/setup %}

The following explanation is written by GPT.

```
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>

int main() {
    const char* directoryName = "my_directory";

    // Create the directory with read, write, and execute permissions for user, group, and others
    if (mkdir(directoryName, S_IRWXU | S_IRWXG | S_IRWXO) == -1) {
        perror("Error creating directory");
        exit(EXIT_FAILURE);
    }

    printf("Directory created successfully.\n");

    return 0;
}
```
In this example, we have a C program that uses the mkdir() function from POSIX to create a directory named "my_directory".

The mkdir() function takes the directory name as the first argument (directoryName) and the permissions for the directory as the second argument. In this case, we use symbolic constants (S_IRWXU, S_IRWXG, S_IRWXO) from the sys/stat.h header to set read, write, and execute permissions for the user, group, and others.

If the mkdir() function returns -1, it indicates an error occurred, and the program prints an error message using perror(). It then exits with a failure status.

If the directory creation is successful, the program prints a success message.

This short example demonstrates how to create a directory using a POSIX function. The same code can be compiled and executed on various UNIX-like systems, providing portability and compatibility.





#### Reference
1. [POSIX](https://baijiahao.baidu.com/s?id=1663873870836212494&wfr=spider&for=pc)
