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



