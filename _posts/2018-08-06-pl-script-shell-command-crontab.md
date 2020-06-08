---
layout: post
title: "Shell: Crontab"
keywords: []
description: 
category: "PL"
tags: ["script","shell"]
---
{% include JB/setup %}

#### 访问控制
1. 当系统中有/etc/cron.allow文件时，只有写入此文件的用户可以使用crontab命令。
2. 当/etc/cron.allow存在时，/etc/cron.deny文件会被忽略,/etc/cron.allow文件的优先级更高
3. 当系统中只有/etc/cron.deny文件时，写入此文件的用户不能使用crontab命令

#### 常用命令
<table>
	<tr>
		<th>项目</th>
		<th>*</th>
		<th>*</th>
		<th>*</th>
		<th>*</th>
		<th>*</th>
	</tr>
	<tr>
		<td>含义</td>
		<td>每小时中的第几分钟</td>
		<td>每天当中的第几小时</td>
		<td>每月当中的第几天</td>
		<td>每年当中的第几月</td>
		<td>每周当中的星期几</td>
	</tr>
	<tr>
		<td>范围</td>
		<td>0-59</td>
		<td>0-23</td>
		<td>1-31</td>
		<td>1-12</td>
		<td>0-7</td>
	</tr>

</table>


```shell
# 编辑定时任务
crontab -e
# 含义每个小时的第10分钟执行下列命令
10 * * * * ls /home >> ~/temp 
```

