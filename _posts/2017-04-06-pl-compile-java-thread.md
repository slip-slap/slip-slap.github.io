---
layout: post
title: "Java: 多线程"
keywords: 
description: 
category: "PL"
tags: ["java","compile"]
---
{% include JB/setup %}


#### 创建与启动

<hr />
##### 继承自Thread类 

```java
class Foo extends Thread{
	@Override
	public void run() {
		for(int i=0;i<50;i++){
		System.out.println("继承线程"+this.getName());
		}
	}
}
```

##### 匿名类

```java
//创建十个线程并启动
for(int i=0;i<10;i++){
    new Thread(new Runnable() {
        @Override
        public void run() {
            for(int j=0;j<10;j++){
                try{
                    Thread.sleep(3);
                }catch(Exception e){
                    e.printStackTrace();
                }
            System.out.println(this);
            }
       }
    }).start();
}
```
<hr />
#### 多线程取火车票

```java
//多线程取火车票
//火车票就是一个数据库
class Ticket{
    //定义集合存放火车票
    private List<Integer> tList=new ArrayList();
    private Integer index=0;
    //提供getter方法
    synchronized public Integer getIndex(){
        //每次取完票后，这个好码就没了
        index++;
        try{
            Thread.sleep(3);
        }catch(Exception e){
            e.printStackTrace();
        }
        return index;
    }
   //getter
   public List getList(){
       return tList;
   }
   public void createTicket(){
       for(int i=0;i<105;i++){
           tList.add(i);
       }
   }
}
//两个线程并发访问
//窗口1
class Window1 implements Runnable{
    //定义一个集合接受Ticket的总量
    private List<Integer> ticketList;
    //类似于本地数据库
    private Ticket ticket;
    //提供构造器传递Ticket类
    Window1(List ticketList,Ticket ticket){
        this.ticketList=ticketList;
        this.ticket=ticket;
    }
   //实现父类接口
   public void run(){
       //这里我并不知道这个窗口会卖出多少张票，所以我使用while循环
       //为什么要把相同的代码都提取出来呢，便于修改和维护
       /**
       * 就比如这里，getIndex我使用了两次
       * 这明显是错误，我只有两个线程，我在两个地方修改
       * 如果我有几百个线程呢，我不累死
       */
       Integer num;
       while((num=ticket.getIndex())<100){
           int ticketNumber=ticketList.get(num);
           System.out.println("w1 this ticket number is "+ticketNumber);
           try {
               Thread.sleep(3);
           } catch (InterruptedException e) {
               e.printStackTrace();
           }
       }
   }
}
class Window2 implements Runnable{
    //定义一个集合接受Ticket的总量
    private List<Integer> ticketList;
    //类似于本地数据库
    private Ticket ticket;
    //提供构造器传递Ticket类
    Window2(List ticketList,Ticket ticket){
        this.ticketList=ticketList;
        this.ticket=ticket;
    }
    //实现父类接口
    public void run(){
        //取得火车🎫
        //这里我并不知道这个窗口会卖出多少张票，所以我使用while循环
        Integer num;
        while((num=ticket.getIndex())<100){
            int ticketNumber=ticketList.get(num);
            System.out.println("w2 this ticket number is "+ticketNumber);
            try{
                Thread.sleep(3);
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}
```
