--- 
layout: post 
title: "OpenGL: Shader" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","graphics programming"]
--- 
{% include JB/setup %}


#### Fragment shader
1. The main purpose of the fragment shader is to calculate the final color of a pixel and this is
   usually the stage where all the advanced OpenGl effects occur, usually the fragment shader
   contains data about the 3D scene that it can use to calculate the final pixel color
2. like lights, shadows, color of the light and so on.




#### Error: Shaders on Mac Does Not Compile

Solution
```cpp
glfwInit();

glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
#ifdef __APPLE__
 glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

GLFWwindow *window = glfwCreateWindow( ... );
```


#### Reference
1. [Shaders on Mac does not
   compile](https://stackoverflow.com/questions/31803872/opengl-glsl-shaders-on-mac-does-not-compile)
