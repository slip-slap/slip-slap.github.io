---
layout: post
title: "Command: Tmux"
keywords: []
description: 
category: "PL"
tags: ["shell","script"]
---
{% include JB/setup %}


#### intro
tmux is a terminal multiplexer，tmux使用C/S模型构建，it consists of the
following unit:
1. server，输入tmux命令开启一个服务器
2. session，一个服务器可以包含多个会话
3. window， 一个会话可以包含多个窗口
4. pane， 一个窗口一个包含多个面板


#### Layout
1. prefix+ space: change the layout from horizontal to vertial 


#### Session Operation

+ exit current session:  prefix+d <font color="red">退出该session后，该session扔在后台运行</font>
+ check out all sessions: tmux ls
+ re-enter session: tmux attach -t session-name
+ create a session with specific name: tmux new -s name
+ rename a session: tmux rename-session -t 3 paper


##### Session Switch
1. prefix+w :the shortcut key of vim plugin nerdtree is also prefix+w
<hr />

#### 功能

为了使自身的快捷键和其他软件的快捷键
互不干扰，tmux定义了快捷键前缀<br/>
tmux默认的快捷键前缀是Ctrl-b<br />
Caps-Lock-a 用着更方便，可以在配置文件中自己设置
<hr />

#### window operation

+ tmux kill-window -t window-name
<hr />

#### Pane Operation

+ up and down split screen:  prefix+"
+ left and right split screen:  prefix+%
+ switch screen: prefix+o
+ 关闭终端 prefix+x
+ 上下左右分屏切换 prfex+空格键
+ 上下分屏窗格切换 prefix+}
+ full screen   prefix+z   (z which means zoom in and zoom out)
<hr />

##### Adjust Pane Size

```shell
bind < resize-pane -L 2
bind > resize-pane -R 2
bind _ resize-pane -D 2
bind + resize-pane -U 2
```

#### 复制模式

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


#### plugin

#### Tmux Plugin Manager

Just as the name noted, this is plugin is used to manage plugins of tmux

#### tmux-resurrect
key bindings
- prefix + Ctrl-s -save
- prefix + Ctrl-l -restore






#### reference

1. [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
2. [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect)

