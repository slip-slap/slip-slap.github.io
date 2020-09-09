--- 
layout: post 
title: "Graphic Programming: OpenGL Workflow" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","gpu"]
--- 
{% include JB/setup %}


```cpp
// create object
GLuint objectId = 0;
glGenObject(1, &objectId);
// bind object to context, bind means select
glBindObject(GL_WINDOW_TARGET, objectId);
// set options of object currently bound to GL_WINDOW_TARGET
glSetObjectOption(GL_WINDOW_TARGET, GL_OPTION_WINDOW_WIDTH, 800);
glSetObjectOption(GL_WINDOW_TARGET, GL_OPTION_WINDOW_HEIGHT, 600);
// Set context target back to default
glBindObject(GL_WINDOW_TARGET, 0);
```


2. Viewport
1. Behind the scenes OpenGL uses the data specified via **glViewport** to transform the 2D
   coordinates it processed to coordinates on your screen. 
- For example, a processed point of location(-0.5, 0.5) would(as its final transformation) be mapped
  to (200,450) in screen coordinates.
- Note that processed coordinates in OpenGL are between -1 and 1 so we effectively map from the
  range (-1 to 1) to (0, 800) and (0, 600)


2. Double buffer: When an application draws in a single buffer the resulting image might display
   flickering issues. This is because the resulting output image is not drawn in an instant, but
   drawn pixel by pixel and usually from left to right and top to bottom. 
- because these images are not displayed at an instant to the user, but rather via a step by step
  generation the result may contain quite a few artifacts.
- To circumvent these issues, windowing applications apply a double buffer for rendering.
- The front buffer contains the final output image that is shown at the screen, while all the
  rendering commands draw to the back buffer. As soon as all the rendering commands are finished we
  swap the back buffer to the front buffer so the image is instantly displayed to the user.


#### Shader
1. In order for OpenGl to know what to make of your collection of coordinates and color values
   OpenGL requires you to hint what kind of render types you want to form with the data.
- Do we want the data rendered as a collection of points, a collection of triangles or perhaps just
  one long line?
- Those hints are called primitives and are given to OpenGL while calling any of the drawing
  commands.
- Some of these hints are GL_POINTS, GL_TRIANGLES and GL_LINE_STRIP.
