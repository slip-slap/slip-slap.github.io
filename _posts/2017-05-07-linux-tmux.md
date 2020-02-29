---
layout: post
title: "tmux"
keywords: ["tmux", "introduction"]
description: "tmux"
category: "linux"
tags: ["linux"]
---
{% include JB/setup %}


#### intro
tmux是一个优秀的终端复用软件，tmux使用C/S模型构建，主要由以下单元模块构成:
1. server 服务器，输入tmux命令开启一个服务器
2. session 会话，一个服务器可以包含多个会话
3. window 窗口， 一个会话可以包含多个窗口
4. pane 面板， 一个窗口一个包含多个面板

<hr />

#### 功能

为了使自身的快捷键和其他软件的快捷键
互不干扰，tmux定义了快捷键前缀<br/>
tmux默认的快捷键前缀是Ctrl-b<br />
Caps-Lock-a 用着更方便，可以在配置文件中自己设置
<hr />

##### pane操作

+ 上下分屏 prefix+"
+ 左右分屏 prefix+%
+ 切换屏幕 prefix+o
+ 关闭终端 prefix+x
+ 上下左右分屏切换 prfex+空格键
+ 上下分屏窗格切换 prefix+}
+ full screen   prefix+z   (z which means zoom in and zoom out)

<hr />


##### window operation

+ tmux kill-window -t window-name

##### session操作

+ 退出一个session 前缀键+d <font color="red">退出该session后，该session扔在后台运行</font>
+ 查看有哪些sessions tmux ls
+ 重新进入session   tmux attach -t session-name
+ tmux new -s myname # create a session with specific name

<hr />
##### 复制模式

在tmux的配置文件.tmux.conf添加如下配置

```shell
setw -g mode-keys vi
```

1. 前缀键+[ 进入复制模式
2. 使用vi的j,h,k,l方向键移动光标
3. 按空格键开始选择复制区域
4. 选择完成后按enter键退出
5. 前缀键 ] 粘贴
<hr />

#### 配置文件

1. default configuration file:  ~/.tmux.conf
2. reload tmux environment  

```shell
type this in terminal if tmux is already running
tmux source ~/.tmux.conf
```

<hr />

##### 调整窗格大小

```shell
bind < resize-pane -L 2
bind > resize-pane -R 2
bind _ resize-pane -D 2
bind + resize-pane -U 2
```

#### plugin

#### Tmux Plugin Manager

Just as the name noted, this is plugin is used to manage plugins of tmux

#### tmux-resurrect






#### reference

1. [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
2. [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect)

