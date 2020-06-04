---
layout: post
title: "OS: System Call"
keywords: []
description: ""
category: "OS"
tags: []
---
{% include JB/setup %}

####
1. System calls provide an interface to the servies made available by an
   Operating System.
- A simple task like copying like copying the contents of one file to another
  file, we had to run a lot of system calls. Many system calls were executed in
  the process.
- These calls are generally available as routines written in C and C++

####
1. Process Control calls
- end, abort
- load execute
- create process, terminate process
- get process attributes, set process attributes
- wait for time
- wait event, signal event
- allocate and free memory

2. File Manipulation calls
- create file, delete file
- open, close
- read, write, reosition
- get file attributes, set file attributes
3. Device Management calls
- request device, release device
- read, write, reposition
- get device attributes, set device attributes
- logically attach or detach devices

4. Information Maintenance calls
- get time or date, set time or date
- get system data, set system data
- get process, file, or device attributes
- set process, file, or device attribtues

5. Communications calls
- create, delete commnication connection
- send, receive messages
- transfer status information
- attach or detach remote devices
