--- 
layout: post 
title: "C++: Vim" 
keywords: [] 
description: 
category: "PL"
tags: ["c++"] 
--- 
{% include JB/setup %}


[官方文档](http://docs.opencv.org/master/d6/d6d/tutorial_mat_the_basic_image_container.html)写得很不客气，there's no point to using the old methods unless you're a masochist programmer and you're asking for trouble

绘制椭圆代码，[参考文献](http://docs.opencv.org/master/d3/d96/tutorial_basic_geometric_drawing.html)
```
#define w 400
cv::Mat img=Mat::zeros(w,w,CV_8UC3);
cv::ellipse(img,Point(w/2,w/2),Size(w/4,w/16),0,0,360,Scalar(255,0,255),2,3);
imshow("demo",img);
waitKey(0);
```
