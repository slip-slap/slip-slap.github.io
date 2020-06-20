---
layout: post
title: "Git: Sharing"
keywords: []
description: 
category: "OS" 
tags: []
---
{% include JB/setup %}

####

```shell
fetch
pull
push
remote
submodule
```


#### Pull and Fetch
In the default mode, **git pull** is shorthand for **get fetch** followed by
**git merge FETCH_HEAD **

1. git fetch: is the command that tells you local git to retrieve the latest
   meta-data info from the original(yet doesn't do any file transferring.) It's
   more like just checking to see if there are nay changes available.

2. git pull: on the other hand does that and brings those changes from the
   reomote repository.

#### Reference
1. [fetch and pull 1](https://stackoverflow.com/questions/292357/what-is-the-difference-between-git-pull-and-git-fetch)
2. [fetch and pull 2](https://www.freecodecamp.org/news/git-fetch-vs-pull/#:~:text=git%20fetch%20is%20the%20command,changes%20from%20the%20remote%20repository.) 
