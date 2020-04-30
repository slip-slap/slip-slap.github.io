--- 
layout: post 
title: "Java: Jvm" 
keywords: [] 
description: 
category: "code" 
tags: ["java"] 
--- 
{% include JB/setup %}


#### class文件的组织结构
.class文件是由子节组成的文件，又叫字节码文件
<hr />
##### 魔数
由java编译器编译而成的class文件的前四个字节都是“OxCAFEBABE”
作用，即JVM在尝试加载某个文件到内存中的时候，会首先判断此class文件有没有JVM认为可以接受的"签名"，即JVM会首先读取文件的前四个字节，判断这四个字节是否是"0xCAFEBABE",如果是则JVM会认为可以将此冷箭当作class文件来加载使用
<hr />
##### 版本号


#### 垃圾回收机制
<hr />
##### 垃圾回收算法
1. 标记-清除算法，首先标记出所有需要回收的对象，然后回收所有需要回收的对象，该算法缺点是内存块回收之后不连续，导致下一次想分配大内存而无法分配。
2. 标记-清除-压缩 该方法对上述方法进行优化，缺点是不停的内存间的拷贝和复制，性能较差。
3. 标记-清除-复制 该算法事先分配两块相同的区域A和B，将A中存活对的复制到B，再将A清空。
<hr />
<img src="/my_pics/java/jvm/memory-model.jpeg" width="450" height="300">
#### Java分代收集算法
Java主要将内存划分为两部分:新生代和老生代
1. 新生代中，对象存活率低，存活期间较短，使用复制算法进行垃圾回收
2. 老生代中，存活率较高，采用标记-清除-压缩算法进行垃圾回收。
#### 垃圾回收器
<hr />
MinorGC: 从年轻空间(包括Eden和Survivor区域)回收内存称为Minor GC <br />
1. 当JVM无法为一个新对象分配空间时会触发Minor GC,比如当Eden区满了，所以分配率越高，越频繁执行Minor GC
2. 本质上来说，我们并不关心是Minor GC，Major GC还是Full GC，只需要关心GC是否停止了所用应用程序的线程
