---
layout: post
title: "Service: SSH"
keywords: []
description: 
category: "linux"
tags: ["SERV"]
---
{% include JB/setup %}


#### 介绍
  

1. ssh是一种协议，用于计算机之间的加密登陆。
2. 用户从本地计算机通过ssh登陆到另外一台计算机，是安全的
3. ssh只是一种协议，具体由多种实现，主要讲开源的OpenSSH实现

#### 使用
  
  
##### 登陆
ssh的登陆和mysql的远程登陆很像，可能mysql的底层使用的就是ssh来实现远程登陆的
```shell
# 用户名user登陆host
$ ssh user@host
# 本地用户名和远程用户名相同
$ ssh host
# ssh的默认端口为22，使用p修改端口
$ ssh -p user@host
```
<hr />
##### 登陆过程
  

1. 主机受到用户的登陆请求，把自己的公钥发给用户
2. 用户使用公钥将登陆密码加密，发送给主机
3. 主机用私钥解密登陆密码，密码正确，同意登陆

##### 免密码登陆
```shell
# 在a机器下生成公钥/私钥对,在用户家目录下的.ssh文件中
ssh-keygen -t rsa
# 使用scp命令，将a机器id_rsa.pub复制到b机器的.ssh/authorized_keys文件里
scp .ssh/id_rsa.pub hy@192.168.1.1:/home/hy/id_rsa.pub
# b机器把从a机器复制的id_rsa.pub添加到.ssh/authorized_keys中
cat id_rsa.pub >> .ssh/authorized_keys
# 修改authorized_keys的权限为600
chmod 600 .ssh/authorized_keys
```
  

#### 中间人攻击
  

如果攻击者在用户与远程主机之间，用伪造的公钥，获取用户的登陆密码，再用这个密码登陆主机。
  
<hr />
##### 口令登陆
  

1. 第一次登陆对方主机会出现对方的公钥指纹，用来验证host主机的真实性
2. 公钥指纹一般使用RSA算法生成，长达1024位，难以比较,所以使用MD5算法，变成一个128位的指纹
3. 远程主机的公钥被接受以后，文件会被保存在客户端的${HOME}/.ssh/known_hosts文件中。下次再链接该主机时，由于客户端已经有了服务器的公钥，跳过验证主机真实性的步骤，直接输入密码登陆
4. 在/etc/ssh/ssh_known_hosts文件中保存对所用用户都信赖的公钥