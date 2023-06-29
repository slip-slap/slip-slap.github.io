---
layout: post
title: "Git: With Proxy"
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}

#### Which protocol are you using?
1. ssh protocol
```
git@github.com:AFAgarap/cnn-svm.git
```
2. git protocol
```
git://github.com/cms-sw/cmssw.git
```
3. https protocol
```
https://github.com/lilykonings/jekyll-password-protect.git
```

#### The corresponding proxy

1. ssh proxy: In this case, git relis on ssh to handle the connection; in order to connect through a
   SOCKS proxy you have to configure ssh itself, setting the ProxyCommand option in your
   ~/.ssh/config file:
```
Host github.com
    User                    git
    ProxyCommand            nc -x localhost:1080 %h %p
```

#### Case 1:
problem: Try to push local branch to remote with command-git push origin master:master, it fails and prompt can not connect to
127.0.0.1:7890
solve: remove the following code from .ssh/config file, it works.
```
Host github.com
    User                    git
    ProxyCommand            nc -x localhost:1080 %h %p
```
refleck: I don't know why this happen, anyway it works.



#### Reference
1. [Git with proxy](https://cms-sw.github.io/tutorial-proxy.html)
