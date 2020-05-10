--- 
layout: post 
title: "C++: OpenCV" 
keywords: [] 
description: 
category: "PL"
tags: ["c++"] 
--- 
{% include JB/setup %}
[reference](http://docs.opencv.org/2.4/modules/highgui/doc/highgui.html)
```
VideoCapture cap(0); // open the default camera
         if(!cap.isOpened())  // check if we succeeded
         return -1;

         Mat edges;
         namedWindow("edges",1);
         for(;;){
         Mat frame;
	     cap >> frame; // get a new frame from camera
	     cvtColor(frame, edges, CV_BGR2GRAY);
	     GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
	     Canny(edges, edges, 0, 30, 3);
	     imshow("edges", edges);
	     char alph=(char)waitKey(3);
	     if(alph=='s')
	     break;    //键盘响应函数
	     }
```
