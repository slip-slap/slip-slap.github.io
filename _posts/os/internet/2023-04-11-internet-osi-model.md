---
layout: post
title: "Internet: OSI"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### Bandwidth
Bandwidth is how much information you receive every second
- Ki refers to 1024; Mi refers to 1024\*1024
- 1Kbps: 1000 bit/s 
- 1KiBps: 1024 bit/s

#### OSI 
##### 物理层
- 对于电脑主机含移动设备，网卡硬件包含了物理层的协议实现
- 调制解调器：翻译数字信号和模拟信号
- 中继器：信号在物理介质中传输，会出现衰减。中继器可以增强信号。

##### 数据链路层
- 物理层信息打包，物理层传输的信息就是比特流。但是计算机处理比特流很不方便。链路层就是要把比特流打包，链路层的单位，叫做一帧。
- 对于电脑主机含移动设备，网卡硬件和网卡驱动包含了链路层的协议实现

##### 网络层
1. 存在的理由
- 提供路由机制
- 网络层两种交换技术：circuit switching vs packet switching
- 对于电脑主机含移动设备，网络层的协议实现通常包含在操作系统自带的网络模块中。
2. 基于网络层的相关软件
- [ping](https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol)
- One problem confuses me is that how could I use ping without port? It's because ping is based on
  ICMP protocol, and it's in the network layer. There is no TCP or UDP port number associated with ICMP packets as these numbers
  are associated with the transport layer above
- [traceroute](https://en.wikipedia.org/wiki/Traceroute)


##### 传输层
- 屏蔽circuit switching和package switching的差异
- 网络层是面向主机的，网络层地址就是某个主机地址。而传输层是面向进程的，因此传输层必须在网络层地址的基础上，再
引入某种新的标识，用来区分同一主机上不同的进程。


