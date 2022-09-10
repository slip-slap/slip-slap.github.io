---
layout: post
title: "Shell: Diff"
keywords: []
description: 
category: "PL"
tags: ["script","shell"]
---
{% include JB/setup %}


#### Philosophy
The important thing to remember is that when diff is describing these
differences to you, it's doing so in a prescriptive context: it's telling you
how to change the first file to make it match the second file.

file a is as follows
```
a
b
c
d
```
file b is as follows
```
e
f
g
h
```

execute command diff -u a b, and the output is
```
--- b	2022-09-10 10:25:46.000000000 +0800
+++ a	2022-09-10 10:25:31.000000000 +0800
@@ -1,4 +1,4 @@
-e
-f
-g
-h
+a
+b
+c
+d
```
execute command diff -u b a, and the output is
```
--- a	2022-09-10 10:25:31.000000000 +0800
+++ b	2022-09-10 10:25:46.000000000 +0800
@@ -1,4 +1,4 @@
-a
-b
-c
-d
+e
+f
+g
+h
```






#### Reference
1. [TTY History](https://www.linusakesson.net/programming/tty/)
2. [Linux diff command](https://www.computerhope.com/unix/udiff.htm)
