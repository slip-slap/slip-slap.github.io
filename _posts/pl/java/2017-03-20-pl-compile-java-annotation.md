--- 
layout: post 
title: "Java: Annotation" 
keywords: [] 
description: 
category: "PL"
tags: ["java","compile"]
--- 
{% include JB/setup %}


### 介绍
注解也叫作元数据，为我们在代码中添o加信息提供了一种形式化的方法
+ metadata: data that provides information about other data
<hr />
### 使用
<hr />
#### 注解的定义
+ 源码注解   注解在源码中存在
+ 编译时注解 注解在源码和.class文件中都存在
+ 运行时注解 在运行阶段起作用的注解，甚至影响程序运行逻辑的注解
#### 注解的分类
<hr />
##### JDK注解
JDK注解@Override，@Deprecated和@Suppvisewarnings都是编译时注解
<hr />
##### 第三方注解
<hr >
##### 自定义注解
<hr />

```java
package tuesday;

import java.lang.annotation.*;
import java.lang.reflect.Method;

//自定义注解
//元注解
//指明作用域
@Target({ElementType.METHOD,ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)  //运行时存在，可以通过反射去读取
@Inherited                           //允许子类继承
@Documented                          //生成javadoc时会包含注解
//使用interface关键字来定义注解 注解也是一种类
//当注解只有一个成员时，成员名必须为value(), 使用使可以忽略成员名和赋值号(=)
//注解类可以没有成员，没有成员的注解称为标识注解
//成员的类型是受限的，合法的类型包括原始类型及String,Class,Annotation,Enumeration
//成员以无参无异常方式声明
//因为约定俗成的使用方式为，当只有一个成员变量的时候，使用的时候只传递成员变量的值即可
//可以用default为成员指定一个默认值
//注解的作用域ElementType.TYPE,ElementType.CONSTRUCTOR,ElementType.CONSTRUCTOR,ElementType.LOCAL_VARIABLE,ElementType.FIELD,ElementType.PACKAGE
public @interface Foo{
	    String desc() default "";                     //对于注解类Foo来说，desc虽然没有参数，但确实是一个方法
	    String author() default "";
	    int age() default 18;
}

@interface fuc{
	    //Map<String ,String> me();  //error 不能返回Map类型
	    //String foo(int a);         //error 不能有参数
}
@Foo(desc = "class annotation")
class ParseAnnotation{
    @Foo(desc = "method annotation")
    public void parseAnnotation(){
        try{
            Class clz=Class.forName("tuesday.ParseAnnotation");
            //获取类注解
            if(clz.isAnnotationPresent(Foo.class)){
                Foo foo=(Foo)clz.getAnnotation(Foo.class);
                System.out.println(foo.desc());
            }
            //获取方法注解
            Method[] ms=clz.getMethods();
            for(Method m:ms){
                if(m.isAnnotationPresent(Foo.class)){
                    Foo foo=(Foo)m.getAnnotation(Foo.class);
                    System.out.println(foo.desc());
                }
            }
        }catch (java.lang.Exception e){
            e.printStackTrace();
        }
   }
}
```
