---
layout: post
title: "OS: History"
keywords: []
description: 
category: "CS"
tags: ["summary"]
---
{% include JB/setup %}

#### Timeline
<img src="{{IMAGE_PATH}}/os/os-general-timeline.png" />

#### Linux and BSD

+ Linux is just the Linux Kernel. A typical Linux distributions are made of many pieces of software.
That's why linux is sometimes called GNU/Linux. There are many linux distributions, like Redhat,Ubuntu,Debian,
if you want to install Linux, you will need to choose among the linux distributions first

+ BSDs are both a kernel and an operating system. For example, FreeBSD provides both the BSD kernel and the operating system. 
+ Both of Linux and BSDs are compilant with POSIX standard.

### Mac OS X, Linux, and BSD

+ Mac OS X distribution is based on BSD kernel and BSD operationg system. The command line in the Mac OS X is not as powerful as GNU/linux.
+ Although both of them are compilant with POSIX standard, the grammar are little different. GNU/linux seems more simple and powerfull. so
you should replace Mac OS X utilities with GNU core utilities.

#### Command line under MacOS and GNU
1. use man + command: the usage infomation is about Macos.
2. use command --help: the usage information is about GNU.



#### Mac OS and BSD(written by GPT)
Darwin Kernel: At the core of macOS lies the Darwin kernel, which is a hybrid kernel derived from the BSD 4.4-Lite kernel and Mach microkernel. The Darwin kernel provides the low-level functionality and interfaces for the operating system.

BSD Userland: macOS incorporates various components from the BSD userland, which includes a significant portion of the user-level tools and utilities. These BSD-derived components include the command-line interface, shell utilities, file system utilities, network stack, and more. macOS uses BSD's command-line interface and utilities, such as ls, cp, mv, and grep, which are compatible with their BSD counterparts.

Frameworks and APIs: While macOS has BSD roots, it has evolved to include many additional frameworks and APIs that are specific to the macOS ecosystem. These frameworks, such as Cocoa and Core Foundation, provide higher-level functionality and interfaces for application development on macOS.

Compatibility and Standards: macOS adheres to various industry standards, including POSIX (Portable Operating System Interface), which is a set of standards derived from Unix and includes the POSIX API for UNIX-like systems. This adherence to standards ensures compatibility with software developed for BSD and other POSIX-compliant systems.



#### reference
1. [Install and Use GNU command on MacOS](https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/)
2. [Linux and BSD](https://www.howtogeek.com/190773/htg-explains-whats-the-difference-between-linux-and-bsd/)
3. [History](https://www.howtogeek.com/182649/htg-explains-what-is-unix/)


