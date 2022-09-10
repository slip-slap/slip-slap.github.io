--- 
layout: post 
title: "C++ Library: OpenCV Installation" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","compile"]
--- 
{% include JB/setup %}


#### The dependcenies of OpenCV
1. Git
2. CMake
3. Python
4. Boost
5. ffmpeg
6. GCC



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
