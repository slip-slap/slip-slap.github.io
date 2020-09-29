---
layout: post
title: "MacOS: Software Management"
keywords: []
description: 
category: "CS"
tags: []
---
{% include JB/setup %}


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

#### 1.2 brew cask
1. brew cask is an extension to brew that allows management of graphical
applications through the Cask project.
2. Cask offers a way to command line manage the installation of graphical
applications.


### 2 Ruby
ruby使用rvm即Ruby Version Manager来升级Ruby
#### rvm 
1. rvm -v 查看rvm版本
2. rvm list known 列出已知ruby的版本
3. rvm install 2.4.0  安装新版本

#### Gem
gem是管理Ruby库和程序的标准包，通过使用Ruby Gem源来查找，安装，升级和卸载软件
1. gem install [gemname] 从Gem源安装gem包
2. gem update            更新所有已安装的gem包
3. gem list              查看本机已经安装的所有gem包

#### Reference
1. [使用brew安装boost-python](//www.pyimagesearch.com/2015/04/27/installing-boost-and-boost-python-on-osx-with-homebrew/)
