--- 
layout: post 
title: "Java: Command Line" 
keywords: [] 
description: 
category: "PL"
tags: ["java"] 
--- 
{% include JB/setup %}


#### 运行
java [字节码的名字] <br />
java Main   运行Main.class字节码文件

#### java路径
1. 相对路径 指的是JVM的启动路径
```java
File file=new File("config.xml");
file.createNewFile();
// 如果jvm在/Users/ 目录下启动,则会在/Users目录下创建config.xml文件
// tomcat的启动目录为安装目录的bin文件下，在servlet中以相对路径读取文件
// 相对路径为tomcat的启动目录
```

#### javac

javac -d . HelloServlet.java -classpath /Users/huiyaozhang/.m2/repository/javax/servlet/servlet-api/3.0-alpha-1/servlet-api-3.0-alpha-1.jar

#### jar
jar -xvf /Users/huiyaozhang/.m2/repository/javax/servlet/servlet-api/3.0-alpha-1/servlet-api-3.0-alpha-1.jar

```shell
jar cmf /Users/huiyaozhang/project/airongintern/exercise/src/main/resources/day16dynamicProxy/tool/MANIFEST.MF example.jar /Users/huiyaozhang/project/airongintern/exercise/target/classes/day16dynamicProxy/tool/LoadedAgent.class
# 生产jar文件的时候
# jar c[v0]mf manifest jarfile inputfiles
# 该说明的含义为 m 对应manifest文件 f对应文件名 需要严格的对应
```
