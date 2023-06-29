---
layout: post
title: "Internet: Port Forwarding"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Rinetd
1. Create a listening port in the host 
2. Forward incomeing connection from listening port to another
- Open configuration file /opt/homebrew/etc/rinetd.conf
- enter the forward rule
```shell
# bindadress  bindport  connectaddress  connectport  options...
0.0.0.0     65510        127.0.0.1   7890 
```


