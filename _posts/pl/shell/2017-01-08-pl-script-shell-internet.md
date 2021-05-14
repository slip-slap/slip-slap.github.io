---
layout: post
title: "Shell: Internet"
keywords: []
description: 
category: "PL"
tags: ["script","shell"]
---
{% include JB/setup %}

* TCP/IP: Transmission Control Protocol/Internet Protocol
* LAN: Local Area Network
* WAN: Wide Area Network
* DNS: Domain name system

#### netstat
1. show network status
2. netstat -p TCP 显示tcp协议

#### ip
1. internet protocol
2. ip addr




#### fping

#### hping


### 路由扫描 

#### traceroute 

#### mtr 

### 批量服务扫描 

#### nmap 

##### 常用功能
```shell
# 查看肉鸡开放的端口
sudo nmap -sS 47.75.37.163
# 显示信息如下
PORT     STATE  SERVICE
22/tcp   open   ssh
80/tcp   closed http
443/tcp  closed https
3128/tcp closed squid-http
3389/tcp closed ms-wbt-server
```

#### ncat 








#### Reference
1. [Curl](https://www.cnblogs.com/gbyukg/p/3326825.html)

