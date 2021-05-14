---
layout: post
title: "Java: Package Manager"
keywords: 
description: 
category: "PL"
tags: ["java","compile"]
---
{% include JB/setup %}

### 简介
[官网](http://maven.apache.org/pom.html)和cmake一样，maven也用来构建项目。  
maven有个仓库的概念，怎么理解这个概念呢。顶级域名有com, org等。顶级域名具有不可重复性，因此可以用来作为包名。google,alibaba会把自己开发的一些框架贡献给开源社区。  
<hr />
### 属性
<hr />
#### POM属性
+ {basedir} 表示项目更目录
+ {version} 表示项目版本
1. ${project.build.directory} 表示主源码路径，默认为target
2. ${project.build.outputDirectory} 构建过程输出目录，默认为target/classes
3. ${project.build.sourceEncoding}表示主源码的编码格式
4. ${project.build.sourceDirectory}表示主源码路径
5. {project.build.finalName} 表示输出文件名称
6. ${project.packageing} 打包类型，默认为jar
7. ${project.version}表示项目版本
<hr />
#### Java系统属性
+ 所有的Java系统属性都可以使用Maven属性引用,${user.home}
+ mvn help:system可查看所有Java系统属性
+ System.getProperties() 可得到所有Java属性
<hr />
#### 自定义属性
```xml
<project>
	<properties>
		<spring.version>4.3.8.RELEASE</spring.version>
		<!-- 设置file-encoding-->
	    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
	</properties>
</project>
```
在其它地方使用${spring.version}
<hr />
### 目录结构 
maven约定的目录结构  
```
src
  main
     java
	 resource
  test
  	 java 
	 resource
target
pom.xml
```
<hr />
### 生命周期
各个周期相互独立，后面的周期依赖前面的周期
#### clean 清理项目
1. pre-clean 执行清理前的工作
2. clean 清理上一次构建生成的所有文件
3. post-clean 执行清理后的文件
<hr />
#### default 构建项目
1. compile
2. test 
3. package
4. install
<hr />
####  site 生成项目站点
1. pre-site 在生成项目站点前要完成的工作
2. site 生成项目的站点文档
3. post-site 在生成项目站点后要完成的工作
4. site-deploy 发布生成的站点到服务器上
<hr />
### 配置
像vim,tmux一样，maven也有自己的配置文件，${MAVEN_HOME}/conf下的settings.xml文件
#### 修改远程仓库
```xml
<mirrors>
    <mirror>
		<id>nexus-aliyun</id>
		<mirrorOf>*</mirrorOf>
		<name>Nexus aliyun</name>
        <url>http://maven.aliyun.com/nexus/content/groups/public</url>
	</mirror>
<mirrors>
```
<hr />
### 使用
1. [maven仓库](http://mvnrepository.com/)寻找jar包
2. <font color="red">选择版本号</font>
3. 配置依赖
阿里贡献了fastjson,号称世界上最快的解析器.在maven中的配置代码如下  
```xml
<dependency>
	<gourpId>com.alibaba</groupId>
	<artifactId>fastjson</artifactId>
	<version>1.1.36</version>
</dependency>
<!--json解析器常见的有fastjson，jackson和json-lib
	其中json-lib解析器的包导入比较特别，需要注意
-->
<dependency>
      <groupId>net.sf.json-lib</groupId>
      <artifactId>json-lib</artifactId>
      <version>2.4</version>
      <classifier>jdk15</classifier>
</dependency>

```
<hr />
#### plugin
<hr />
##### archetype:generate
```shell
mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp     //web目录
mvn archetype:generate -DarchetypeArtifactId=maven-archetype-quickstart //创建经典目录
```
<hr />
#### assembly

<hr />
参考链接<br />
[maven assembly plugin](http://maven.apache.org/plugins/maven-assembly-plugin/index.html)
[maven pom文件](https://maven.apache.org/pom.html#POM_Relationships)
