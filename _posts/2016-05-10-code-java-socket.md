--- 
layout: post 
title: "Java: Socket" 
keywords: [] 
description: 
category: "code" 
tags: ["java"] 
--- 
{% include JB/setup %}


#### socket阻塞
服务器端的阻塞有两种<br />
1. ServerSocket的accept方法会产生阻塞
2. 文件的io会产生阻塞
<hr />
```java
//客户端请求
public class Client {

    public void getAsset() throws IOException, InterruptedException {
        Socket socket=new Socket("127.0.0.1",8089);
        OutputStream outputStream=socket.getOutputStream();
        socket.close();
        Thread.sleep(50000);
        System.out.println("over");

    }
}
//服务器端
    public void listen() throws IOException, InterruptedException, ExecutionException {
		
        ServerSocket serverSocket=new ServerSocket(8089);

        while (true){
			//产生阻塞
            Socket clientSocket=serverSocket.accept();
			//不会阻塞
            InputStream inputStream=clientSocket.getInputStream();
            byte[] bytes=new byte[4];
            System.out.println("阻塞");
			//会阻塞，等待客户端发送io流发送终止信号
            inputStream.read(bytes);
            System.out.println("hello world! no blocking");
        }
    }
```
