---
layout: post
title: "Mangement: Software"
keywords: []
description: 
category: "linux"
tags: ["MNG"]
---
{% include JB/setup %}

### Brew
#### 作用
the missing package manager for macos, 和centos下的yumhe ubuntu下的apt-get类似
1. brew的安装目录在/usr/local/Cellar
2. 配置目录在/usr/local/etc
3. 命令目录在/usr/local/bin

#### 使用
1. brew install boost-python
2. brew upgrade boost
3. brew info boost  查看boost相关信息

#### xcode-select
1. Manages the active developer directory for Xcode and BSD tools.

```shell
xcode-select --install
# Opens a user interface dialog to request automatic insallation of the command
line developer tools.
```
#### Relationship
1. brew is a command, it needs some environment. 
2. xcode-select --install provide an active developer tools, include compiler
   and something else.


<hr />

### Ruby
ruby使用rvm即Ruby Version Manager来升级Ruby
#### rvm 
1. rvm -v 查看rvm版本
2. rvm list known 列出已知ruby的版本
3. rvm install 2.4.0  安装新版本
<hr />

#### Gem
gem是管理Ruby库和程序的标准包，通过使用Ruby Gem源来查找，安装，升级和卸载软件
1. gem install [gemname] 从Gem源安装gem包
2. gem update            更新所有已安装的gem包
3. gem list              查看本机已经安装的所有gem包

#### Reference
1. [使用brew安装boost-python](//www.pyimagesearch.com/2015/04/27/installing-boost-and-boost-python-on-osx-with-homebrew/)
