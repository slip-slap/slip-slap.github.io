---
layout: post
title: "Git: Server"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

#### Example
Make a bare repository by *git init --bare* command.
- This repository only contains *HEAD*, without *index* and "working directory".


<img align="left" src="{{IMAGE_PATH}}/git/git-bare-repository.png" /> 


#### Management of access
1. To access a repository, just need do one thing, add the users public key to 
the server.

```ssh
cat /tmp/id_rsa.john.pub >> ~/.ssh/authorized_keys
```
2. This is also the approach that github adopt to manage repo access.







