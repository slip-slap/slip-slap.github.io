---
layout: post
title: "OS: Interprocess Communication"
keywords: []
description: ""
category: "OS"
tags: []
---
{% include JB/setup %}

###
1. Processes executing concurrently in the operating system maybe either
   independent processes or cooperating processes.

- Independent processes: They cannot affect or be affected by the other
  processes executing in the system.
- Cooperating processes: They can affect or be affected by the other processes
  executing in the system.


### IPC Method
1. Shared memory: In the shared-memory model, a region of memory that is shared
   by cooperating processes is established. Processes can then exchange
   information by reading and writing data to the shared region.
2. Message passing: In the messaging model, communication takes place by means
   of messages exchanged between the cooperating processes.



#### Message Passing Systems
1. If processes P and Q want to communicate, they must send messages to and
   receive messages from each other.
- a communicationt link must exist between them.
- this link can be implemented in a variety of ways. there are several methods
  for logically implementing a link and send() /receive() operations, like:

##### Direct or indirect communication. 
##### Synchronous or asynchronous commninication
##### automatic or explicit buffering






### Galois
1. For a long time, I was confused the problem such as consumer and producer
   problem, multithread problem.
2. In nature, they are just IPC problems.

